package com.example.springboot.delegate;

import com.example.springboot.PublisherInfo;
import com.example.springboot.addressCleansing.Address;
import com.example.springboot.addressCleansing.AddressValidateResponse;
import com.example.springboot.addressCleansing.AddressValidator;
import com.example.springboot.addressRoute.CarrierPickupAvailabilityResponse;
import com.example.springboot.addressRoute.CarrierRoute;
import com.opencsv.CSVReader;
import org.springframework.util.ResourceUtils;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class AddressFacade implements UpdateAddress {
    private List<PublisherInfo> rawData;
    private List<PublisherInfo> cleanreports = new ArrayList<>();
    private String[][] routeToAddress;


    public List<PublisherInfo> processAddresses(){

        this.rawData = this.fetchTheSearchData();
        if (this.rawData.size() > 0) {
            this.rawData.remove(0);
        }
        for (PublisherInfo info : this.rawData) {
            try {
                System.out.print("************************** ADDRESS VALIDATION ****************************\n");
                AddressValidator addressValidator = new AddressValidator();
                AddressValidateResponse cleansedAddress = addressValidator.addressCleanser(info);
                CarrierRoute route = new CarrierRoute();
                CarrierPickupAvailabilityResponse carrierRoute = route.getCarrierRoute(cleansedAddress);
                //update the address
               this.update(info,cleansedAddress.address,carrierRoute);
                System.out.println("&&&&&&&&&&&&&&&&&&&&&&");
                System.out.println("The full data : " + info.toString());
                System.out.println("&&&&&&&&&&&&&&&&&&&&&&");
                this.cleanreports.add(info);
            } catch (Exception ep) {
                System.out.print(ep);
            }
        }
        this.routeToAddress = this.getNumberOfAddressesPerRoute(this.cleanreports);
        this.rawData.stream().forEach(i->i.setRouteToAddress(this.routeToAddress));
        return this.cleanreports;
    }

    public List<PublisherInfo> fetchTheSearchData() {
        List<PublisherInfo> data = new ArrayList<>();
        String filename = "papersPreprocessed.csv";
        try {
            data = this.readTheDataFromVCS(filename);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return data;
    }

    public List<PublisherInfo> readTheDataFromVCS(String csvFile) throws IOException {

        File file = ResourceUtils.getFile("classpath:" + csvFile);
        CSVReader csvReader = new CSVReader(new InputStreamReader(new FileInputStream(file)));
        List<PublisherInfo> publishRecords = new ArrayList<>();
        String[] values = (csvReader.readNext());
        while (values != null&&values.length>0) {
            List<String> recordsString = Arrays.asList(values);
            PublisherInfo publisherInfo = new PublisherInfo(
                    recordsString.get(0),
                    recordsString.get(1),
                    recordsString.get(2),
                    recordsString.get(3),
                    recordsString.get(4),
                    recordsString.get(5));
            publishRecords.add(publisherInfo);
            values = csvReader.readNext();
        }


        return publishRecords;
    }


    public String[][] getNumberOfAddressesPerRoute(List<PublisherInfo> data) {
        List<String> alltages = new ArrayList<>();
        for (PublisherInfo element : data) {
            if (!element.getRoute().isEmpty()) {
                alltages.add(element.getRoute());
            }
        }
        Map<String, Long> collectData = alltages.stream().collect(Collectors.groupingBy(p -> p, Collectors.counting()));


        int arraySize = collectData.size() + 1;
        String[][] pebPerYear = new String[arraySize][2];
        pebPerYear[0][0] = "Route";
        pebPerYear[0][1] = "Addresses";
        int count = 1;
        for (Map.Entry<String, Long> entry : collectData.entrySet()) {
            if (count <= arraySize) {
                pebPerYear[count][0] = entry.getKey();
                pebPerYear[count][1] = String.valueOf(entry.getValue());
            }
            count++;

        }

        return pebPerYear;
    }



    @Override
    public void update(PublisherInfo info, Address address, CarrierPickupAvailabilityResponse carrierRoute ) {

        info.setStreetName(address.Address2);
        info.setCity(address.City);
        info.setState(address.State);
        info.setZipCode(address.Zip5 + "-" + address.Zip4);
        info.setRoute(address.Zip5 + "-" + carrierRoute.CarrierRoute);

    }
}
