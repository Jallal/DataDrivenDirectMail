package com.example.springboot.addressRoute;

import com.example.springboot.addressCleansing.AddressValidateResponse;
import org.springframework.web.util.UriUtils;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class CarrierRoute {

    public CarrierPickupAvailabilityResponse getCarrierRoute(AddressValidateResponse response) throws IOException, JAXBException {

        String routeId = "<CarrierPickupAvailabilityRequest USERID=\"237NONE08021\">" +
                "<FirmName></FirmName>" +
                "<SuiteOrApt></SuiteOrApt>" +
                "<Address2>" + response.address.Address2.trim() + "</Address2>" +
                "<Urbanization></Urbanization>" +
                "<City>" + response.address.City.trim() + "</City>" +
                "<State>" + response.address.State.trim() + "</State>" +
                "<ZIP5>" + response.address.Zip5.trim() + "</ZIP5>" +
                "<ZIP4>" + response.address.Zip4.trim() + "</ZIP4>" +
                "</CarrierPickupAvailabilityRequest>";
        String getRoute = " https://secure.shippingapis.com/ShippingAPI.dll?API=CarrierPickupAvailability&XML=" + encodePath(routeId);
        URL url = new URL(getRoute);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        BufferedReader br2 = this.invokeApi(conn);
        CarrierPickupAvailabilityResponse carrierRoute = this.getCarrierRouteReader(br2);
        conn.disconnect();
        return carrierRoute;
    }


    private String encodePath(String path) {

        return UriUtils.encodePath(path, "UTF-8");
    }

    private BufferedReader invokeApi(HttpURLConnection conn) {
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

    private CarrierPickupAvailabilityResponse getCarrierRouteReader(BufferedReader br) throws JAXBException {

        JAXBContext jaxbContext = JAXBContext.newInstance(CarrierPickupAvailabilityResponse.class);
        Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
        CarrierPickupAvailabilityResponse que = (CarrierPickupAvailabilityResponse) jaxbUnmarshaller.unmarshal(br);
        return que;
    }
}
