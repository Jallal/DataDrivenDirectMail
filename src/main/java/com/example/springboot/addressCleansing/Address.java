package com.example.springboot.addressCleansing;

public class Address {
    public String Address2;
    public String City;
    public String State;
    public String Zip5;
    public String Zip4;
    private Address address;

    public String getAddress2() {
        return Address2;
    }

    public void setAddress2(String address2) {
        Address2 = address2;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        City = city;
    }

    public String getState() {
        return State;
    }

    public void setState(String state) {
        State = state;
    }

    public String getZip5() {
        return Zip5;
    }

    public void setZip5(String zip5) {
        Zip5 = zip5;
    }

    public String getZip4() {
        return Zip4;
    }

    public void setZip4(String zip4) {
        Zip4 = zip4;
    }



    private Address() {
    }

    public Address getInstance() {

        if (null == address) {
            address = new Address();
        }

        return address;
    }


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
