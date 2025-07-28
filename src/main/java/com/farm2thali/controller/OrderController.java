package com.farm2thali.controller;

import com.farm2thali.dto.ContactRequest;
import com.farm2thali.dto.OrderRequest;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

@RestController
@Log4j2
public class OrderController {

    @Autowired
    private RestTemplate restTemplate;

    @PostMapping("/bookorder")
    public ResponseEntity<String> bookOrder(@RequestBody OrderRequest orderRequest) {
        log.info("Received Order from: {}", orderRequest.getCustomerName());
        log.info("Phone: {}", orderRequest.getPhone());

        // Prepare ContactRequest object
        ContactRequest contactRequest = new ContactRequest();
        contactRequest.setName(orderRequest.getCustomerName());
        contactRequest.setEmail(orderRequest.getEmail());
        contactRequest.setMessage("Order placed with total: ₹" + orderRequest.getTotal());

        // Get dynamic base URL (e.g., http://localhost:8080)
        String baseUrl = ServletUriComponentsBuilder.fromCurrentContextPath().build().toUriString();
        String url = baseUrl + "/contact-submit";
        log.info("Calling internal API: {}", url);

        // Set headers
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        // Convert to form data since /contact-submit uses @RequestParam
        String body = "fullname=" + contactRequest.getName() +
                "&email=" + contactRequest.getEmail() +
                "&message=" + contactRequest.getMessage();

        HttpEntity<String> requestEntity = new HttpEntity<>(body, headers);

        // Execute POST request to /contact-submit
        ResponseEntity<String> response = restTemplate.postForEntity(url, requestEntity, String.class);

        return ResponseEntity.ok("Order placed and contact form submitted: " + response.getStatusCode());
    }
}
