package com.example.springboot.addressRoute;

import com.example.springboot.addressCleansing.Address;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "CarrierPickupAvailabilityResponse")
public class CarrierPickupAvailabilityResponse {

    public String Address2;
    public String City;
    public String State;
    public String ZIP5;
    public String ZIP4;
    public String CarrierRoute;

    @Override
    public String toString() {
        return "CarrierPickupAvailabilityResponse{" +
                "Address2='" + Address2 + '\'' +
                ", City='" + City + '\'' +
                ", State='" + State + '\'' +
                ", Zip5='" + ZIP5 + '\'' +
                ", Zip4='" + ZIP4 + '\'' +
                ", CarrierRoute='" + CarrierRoute + '\'' +
                '}';
    }
}
