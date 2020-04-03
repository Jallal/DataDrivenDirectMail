package com.example.springboot.model;


import com.example.springboot.AjaxResponseBody;
import com.example.springboot.PublisherInfo;
import com.example.springboot.SearchCriteria;
import com.example.springboot.addressCleansing.AddressValidateResponse;
import com.example.springboot.addressRoute.CarrierPickupAvailabilityResponse;
import com.example.springboot.util.WriteDataToExcelFile;
import com.opencsv.CSVReader;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.UriUtils;

import javax.validation.Valid;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
public class RouteMiningController {
    private List<PublisherInfo> rawData;
    private List<PublisherInfo> cleanreports = new ArrayList<>();
    private String[][] routeToAddress;

    @RequestMapping("/index")
    public String loginMessage() {

        this.rawData = this.fetchTheSearchData();
        if (this.rawData.size() > 0) {
            this.rawData.remove(0);
        }
            for (PublisherInfo info : this.rawData) {
                try {
                    System.out.print("************************** ADDRESS VALIDATION ****************************\n");

                    String addressValidation = "<AddressValidateRequest USERID=\"237NONE08021\"><Address ID=\"0\">" +
                            "<Address1></Address1>" +
                            "<Address2>" + info.getStreetNumber().trim() + " " + info.getStreetName().trim() + "</Address2>" +
                            "<City>" + info.getCity().trim() + "</City>" +
                            "<State>" + info.getState().trim() + "</State>" +
                            "<Zip5>" + info.getZipCode().trim() + "</Zip5>" +
                            "<Zip4></Zip4>" +
                            "</Address></AddressValidateRequest>";

                    String request = "http://production.shippingapis.com/ShippingAPI.dll?API=Verify&XML=" + encodePath(addressValidation);
                    URL url = new URL(request);
                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    BufferedReader br = this.invokeAddressValidation(conn);
                    AddressValidateResponse addressValidateResponse = getCleansedAddresses(br);
                    conn.disconnect();
                    //Getting the route
                    String routeId = "<CarrierPickupAvailabilityRequest USERID=\"237NONE08021\">" +
                            "<FirmName></FirmName>" +
                            "<SuiteOrApt></SuiteOrApt>" +
                            "<Address2>" + addressValidateResponse.address.Address2 + "</Address2>" +
                            "<Urbanization></Urbanization>" +
                            "<City>" + addressValidateResponse.address.City + "</City>" +
                            "<State>" + addressValidateResponse.address.State + "</State>" +
                            "<ZIP5>" + addressValidateResponse.address.Zip5 + "</ZIP5>" +
                            "<ZIP4>" + addressValidateResponse.address.Zip4 + "</ZIP4>" +
                            "</CarrierPickupAvailabilityRequest>";
                    String getRoute = " https://secure.shippingapis.com/ShippingAPI.dll?API=CarrierPickupAvailability&XML=" + encodePath(routeId);
                    url = new URL(getRoute);
                    conn = (HttpURLConnection) url.openConnection();
                    BufferedReader br2 = this.invokeAddressValidation(conn);
                    CarrierPickupAvailabilityResponse carrierRoute = getCarrierRoute(br2);
                    //update the address with the correct info


                    info.setStreetName(addressValidateResponse.address.Address2);
                    info.setCity(addressValidateResponse.address.City);
                    info.setState(addressValidateResponse.address.State);
                    info.setZipCode(addressValidateResponse.address.Zip5 + "-" + addressValidateResponse.address.Zip4);
                    info.setRoute(addressValidateResponse.address.Zip5 + "-" + carrierRoute.CarrierRoute);
                    conn.disconnect();
                    System.out.println("&&&&&&&&&&&&&&&&&&&&&&");
                    System.out.println("The full data : " + info.toString());
                    System.out.println("&&&&&&&&&&&&&&&&&&&&&&");
                    this.cleanreports.add(info);
                    this.routeToAddress = this.getNumberOfAddressesPerRoute(this.cleanreports);
                } catch (Exception ep) {
                    System.out.print(ep);
                }
            }
        return "index";
    }

    private String encodePath(String path) {

        return UriUtils.encodePath(path, "UTF-8");
    }


    public AddressValidateResponse getCleansedAddresses(BufferedReader br) throws JAXBException {

        JAXBContext jaxbContext = JAXBContext.newInstance(AddressValidateResponse.class);
        Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
        AddressValidateResponse que = (AddressValidateResponse) jaxbUnmarshaller.unmarshal(br);
        return que;
    }

    public CarrierPickupAvailabilityResponse getCarrierRoute(BufferedReader br) throws JAXBException {

        JAXBContext jaxbContext = JAXBContext.newInstance(CarrierPickupAvailabilityResponse.class);
        Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
        CarrierPickupAvailabilityResponse que = (CarrierPickupAvailabilityResponse) jaxbUnmarshaller.unmarshal(br);
        return que;
    }

    public BufferedReader invokeAddressValidation(HttpURLConnection conn) {
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \n");
        //System.out.println(request + "\n");
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \n");

        BufferedReader br = null;

        try {

            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + conn.getResponseCode());
            }
            br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));
            System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ \n");
            System.out.println("Output from Server .... \n");

        } catch (MalformedURLException e) {

            e.printStackTrace();

        } catch (IOException e) {

            e.printStackTrace();

        }

        return br;
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

    public Map<String, Long> getDataForReportTwo(List<PublisherInfo> data) {
        List<String> alltages = new ArrayList<>();
        for (
                PublisherInfo element : data) {
            if (!element.getRoute().isEmpty()) {
                alltages.add(element.getRoute());
            }
        }

        Map<String, Long> collectData = alltages.stream().collect(Collectors.groupingBy(p -> p, Collectors.counting()));

        return collectData;
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

    @PostMapping("/api/search")
    public ResponseEntity<?> getSearchResultViaAjax(@Valid @RequestBody SearchCriteria search, Errors errors) throws Exception {
        List<PublisherInfo> data = this.cleanreports;
        data.stream().forEach(i -> i.setRouteToAddress(this.routeToAddress));
        System.out.print("******************************************************\n");
        System.out.print(search.toString());
        System.out.print("******************************************************\n");
        AjaxResponseBody result = new AjaxResponseBody();
        WriteDataToExcelFile file = new WriteDataToExcelFile();
        file.writeReportOneFile(data);
        file.writeReportTwoFile(getDataForReportTwo(data));
        result.setMsg("success");
        result.setResult(data);
        return ResponseEntity.ok(data);
    }
}
