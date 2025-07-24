package com.farm2thali.dto;

import lombok.Data;

@Data
public class OrderItem {
	private String name;
	private int quantity;
	private double price;
}