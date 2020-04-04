package com.example.springboot.delegate;

import com.example.springboot.PublisherInfo;
import com.example.springboot.addressCleansing.Address;
import com.example.springboot.addressRoute.CarrierPickupAvailabilityResponse;

public interface UpdateAddress {
    public void update(PublisherInfo info, Address address, CarrierPickupAvailabilityResponse carrierRoute);

}
