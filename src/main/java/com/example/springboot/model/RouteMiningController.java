package com.example.springboot.model;
import com.example.springboot.AjaxResponseBody;
import com.example.springboot.PublisherInfo;
import com.example.springboot.SearchCriteria;
import com.example.springboot.addressCleansing.AddressValidateResponse;
import com.example.springboot.addressCleansing.AddressValidator;
import com.example.springboot.addressRoute.CarrierPickupAvailabilityResponse;
import com.example.springboot.addressRoute.CarrierRoute;
import com.example.springboot.delegate.AddressFacade;
import com.example.springboot.util.WriteDataToExcelFile;
import com.opencsv.CSVReader;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.validation.Valid;
import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
public class RouteMiningController {


    @RequestMapping("/index")
    public String loginMessage() {

        return "index";
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



    @PostMapping("/api/search")
    public ResponseEntity<?> getSearchResultViaAjax(@Valid @RequestBody SearchCriteria search, Errors errors) throws Exception {

        AddressFacade facade = new AddressFacade();
        List<PublisherInfo> data = facade.processAddresses();
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
