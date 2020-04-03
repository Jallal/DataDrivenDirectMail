package com.example.springboot.util;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.example.springboot.PublisherInfo;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class WriteDataToExcelFile {

    public  void writeReportOneFile(List<PublisherInfo> data ) {
        try {
            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet sheet = workbook.createSheet("Route Report");
            int rowCount = 0;
            Row row = sheet.createRow(rowCount);
            Cell cell = row.createCell(0);
            cell.setCellValue("Cleansed Address");
            cell = row.createCell(1);
            cell.setCellValue("Route");
            for (PublisherInfo field : data) {
                row = sheet.createRow(++rowCount);
                cell = row.createCell(0);
                cell.setCellValue(field.getFullAddress());
                cell = row.createCell(1);
                cell.setCellValue(field.getRoute());
            }
            try (FileOutputStream outputStream = new FileOutputStream("ListOfAddressAndCarrierRoute.xlsx")) {
                workbook.write(outputStream);
            }
        } catch (IOException e) {
            System.out.println(" Failed to export the file : " + e);
        }
    }

    public  void writeReportTwoFile(Map<String, Long> collectData ) {
        try {
            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet sheet = workbook.createSheet("Route Report");
            int rowCount = 0;
            Row row = sheet.createRow(rowCount);
            Cell cell = row.createCell(0);
            cell.setCellValue("Carrier Route");
            cell = row.createCell(1);
            cell.setCellValue("Count");
            for (Map.Entry<String, Long> entry : collectData.entrySet()) {
                row = sheet.createRow(++rowCount);
                cell = row.createCell(0);
                cell.setCellValue(entry.getKey());
                cell = row.createCell(1);
                cell.setCellValue(entry.getValue());
            }
            try (FileOutputStream outputStream = new FileOutputStream("ListOfAddressPerRoute.xlsx")) {
                workbook.write(outputStream);
            }
        } catch (IOException e) {
            System.out.println(" Failed to export the file : " + e);
        }
    }



}
