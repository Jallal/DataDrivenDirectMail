package com.example.springboot;


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
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class HelloController {
    private List<PublisherInfo> rawData;

    @RequestMapping("/index")
    public String loginMessage() {

        this.rawData = this.fetchTheSearchData();
        if (this.rawData.size() > 0) {
            this.rawData.remove(0);
        }

        //this.rawData.stream().forEach(i -> System.out.print(i.getStreetNumber() + "\n"));
        //validate user addresses
        // https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_





        this.rawData.stream().forEach(i -> {
            System.out.print("************************** ADDRESS VALIDATION ****************************\n");

            String addressValidation = "<AddressValidateRequest USERID=\"237NONE08021\"><Address ID=\"0\">" +
                    "<Address1></Address1>" +
                    "<Address2>"+i.getStreetNumber()+" "+i.getStreetName()+"</Address2>" +
                    "<City>"+i.getCity()+"</City>" +
                    "<State>"+i.getState()+"</State>" +
                    "<Zip5>"+i.getZipCode()+"</Zip5>" +
                    "<Zip4></Zip4>" +
                    "</Address></AddressValidateRequest>";

            String request = "http://production.shippingapis.com/ShippingAPI.dll?API=Verify&XML="+encodePath(addressValidation);
            this.invokeAddressValidation(request);
            System.out.print("******************************************************\n");

        });



        return "index";
    }
    private String encodePath(String path) {

        return  UriUtils.encodePath(path, "UTF-8");
    }

    public void invokeAddressValidation(String request){
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \n");
        System.out.println(request+"\n");
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \n");

        try {

                    URL url = new URL(request);

                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("GET");
                    //conn.setRequestProperty("Accept", "application/XML");

                    if (conn.getResponseCode() != 200) {
                        throw new RuntimeException("Failed : HTTP error code : "
                                + conn.getResponseCode());
                    }

                    BufferedReader br = new BufferedReader(new InputStreamReader(
                            (conn.getInputStream())));

                    String output;
                    System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ \n");
                    System.out.println("Output from Server .... \n");
                    while ((output = br.readLine()) != null) {
                        System.out.println(output);
                    }

                    conn.disconnect();

                } catch (MalformedURLException e) {

                    e.printStackTrace();

                } catch (IOException e) {

                    e.printStackTrace();

                }


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
        while (values != null) {
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

    @PostMapping("/api/search")
    public ResponseEntity<?> getSearchResultViaAjax(@Valid @RequestBody SearchCriteria search, Errors errors) throws Exception {
        List<PublisherInfo> data = this.rawData;

        System.out.print("******************************************************\n");
        System.out.print(search.toString());
        System.out.print("******************************************************\n");
        AjaxResponseBody result = new AjaxResponseBody();
        result.setMsg("success");
        result.setResult(data);
        return ResponseEntity.ok(data);
    }
}
