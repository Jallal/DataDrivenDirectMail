package com.example.springboot.addressCleansing;

import javax.xml.bind.annotation.XmlAttribute;

public class Address {
    public String Address2;
    public String City;
    public String State;
    public String Zip5;
    public String Zip4;


    @Override
    public String toString() {
        return "Address{" +
                "Address2='" + Address2 + '\'' +
                ", City='" + City + '\'' +
                ", State='" + State + '\'' +
                ", Zip5='" + Zip5 + '\'' +
                ", Zip4='" + Zip4 + '\'' +
                '}';
    }
}
