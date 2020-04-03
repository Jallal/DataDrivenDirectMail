package com.example.springboot.addressCleansing;


import com.example.springboot.addressCleansing.Address;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "AddressValidateResponse")
public class AddressValidateResponse {

    @XmlElement(name="Address")
    public Address address;

    @XmlAttribute
    public String ID;


    @Override
    public String toString() {
        return "AddressValidateResponse{" +
                "address=" + address +
                '}';
    }

}
