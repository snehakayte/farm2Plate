package com.farm2thali.controller;

import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/api/location")
public class LocationController {
	
	
	@GetMapping("/reverse")
	public ResponseEntity<?> getAddress(
	        @RequestParam(required = false) Double lat,
	        @RequestParam(required = false) Double lon) {

	    if (lat == null || lon == null) {
	        return ResponseEntity.badRequest().body(Map.of(
	            "error", "Latitude and Longitude are required"
	        ));
	    }

	    try {
	        String url = String.format(
	            "https://nominatim.openstreetmap.org/reverse?lat=%f&lon=%f&format=json&email=pratik.kayte96@gmail.com",
	            lat, lon
	        );

	        HttpHeaders headers = new HttpHeaders();
	        headers.set("User-Agent", "Farm2Place/1.0 (pratik.kayte96@gmail.com)");
	        HttpEntity<String> entity = new HttpEntity<>(headers);
	        RestTemplate restTemplate = new RestTemplate();
	        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);
	        return ResponseEntity.ok(response.getBody());

	    } catch (Exception e) {
	        e.printStackTrace();
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(Map.of(
	            "error", "Failed to fetch address. Please try again.",
	            "details", e.getMessage()
	        ));
	    }
	}


}
