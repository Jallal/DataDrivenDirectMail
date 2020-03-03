package com.example.springboot;

import java.util.Objects;
import java.util.Optional;

public class PublisherInfo {

    private String streetName;
    private String streetNumber;
    private String appartmnetNumber;
    private String city;
    private String state;
    private String zipCode;


    @Override
    public String toString() {
        return this.getStreetNumber() + " "+ this.getStreetName()+" "+ this.getCity() +","+this.getState()+" "+this.getZipCode();
    }

    public PublisherInfo(String streetNumber, String streetName, String appartmnetNumber, String city, String state, String zipCode) {

        this.streetNumber = streetNumber;
        this.streetName = streetName;
        this.appartmnetNumber = appartmnetNumber;
        this.city = city;
        this.state = state;
        this.zipCode = zipCode;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getStreetNumber() {
        return streetNumber;
    }

    public void setStreetNumber(String streetNumber) {
        this.streetNumber = streetNumber;
    }

    public String getAppartmnetNumber() {
        return appartmnetNumber;
    }

    public void setAppartmnetNumber(String appartmnetNumber) {
        this.appartmnetNumber = appartmnetNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PublisherInfo)) return false;
        PublisherInfo that = (PublisherInfo) o;
        return getStreetNumber() == that.getStreetNumber() &&
                Objects.equals(getStreetName(), that.getStreetName()) &&
                Objects.equals(getAppartmnetNumber(), that.getAppartmnetNumber()) &&
                Objects.equals(getCity(), that.getCity()) &&
                Objects.equals(getState(), that.getState()) &&
                Objects.equals(getZipCode(), that.getZipCode());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getStreetName(), getStreetNumber(), getAppartmnetNumber(),
                getCity(), getState(), getZipCode());
    }
}
