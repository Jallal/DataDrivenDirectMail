package com.example.springboot.addressCleansing;

import com.example.springboot.PublisherInfo;
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

public class AddressValidator {

    public AddressValidateResponse addressCleanser(PublisherInfo info ) throws IOException, JAXBException {

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
        BufferedReader br = this.invokeApi(conn);
        AddressValidateResponse addressValidateResponse = getCleansedAddresses(br);
        conn.disconnect();
        return addressValidateResponse;
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

    private AddressValidateResponse getCleansedAddresses(BufferedReader br) throws JAXBException {

        JAXBContext jaxbContext = JAXBContext.newInstance(AddressValidateResponse.class);
        Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
        AddressValidateResponse que = (AddressValidateResponse) jaxbUnmarshaller.unmarshal(br);
        return que;
    }

    private String encodePath(String path) {

        return UriUtils.encodePath(path, "UTF-8");
    }

}
