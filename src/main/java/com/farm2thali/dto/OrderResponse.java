package com.farm2thali.dto;

import lombok.Data;

@Data
public class OrderResponse {
	private String status;
	private String message;

	public OrderResponse(String status, String message) {
		this.status = status;
		this.message = message;
	}
}