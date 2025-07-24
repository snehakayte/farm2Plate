package com.farm2thali.dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class OrderRequest {

	 @JsonProperty("customerName")
	    private String customerName;
	    private String phone;
	    private String address;
	    private List<OrderItem> items;
	    private String total;
}
