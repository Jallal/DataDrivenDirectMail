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


//<AddressValidateResponse>
    // <Address ID="0">
    // <Address2>3256 ALPINE DR</Address2>
    // <City>ANN ARBOR</City>
    // <State>MI</State>
    // <Zip5>48108</Zip5>
    // <Zip4>1766</Zip4>
    // </Address>
    // //</AddressValidateResponse>


}
