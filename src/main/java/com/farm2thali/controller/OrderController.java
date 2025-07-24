package com.farm2thali.controller;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.stream.Collectors;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.farm2thali.dto.OrderItem;
import com.farm2thali.dto.OrderRequest;
import com.farm2thali.dto.OrderResponse;

import lombok.extern.log4j.Log4j2;

@RestController
@Log4j2
public class OrderController {

    @PostMapping("/bookorder")
    public OrderResponse bookOrder(@RequestBody OrderRequest orderRequest) {
        log.info("Received Order: ");
        log.info("Customer Name: {}", orderRequest.getCustomerName());
        log.info("Phone: {}", orderRequest.getPhone());
        log.info("Address: {}", orderRequest.getAddress());
        log.info("Total: {}", orderRequest.getTotal());

        for (OrderItem item : orderRequest.getItems()) {
            log.info("Item: {}, Quantity: {}, Price: {}", item.getName(), item.getQuantity(), item.getPrice());
        }

        // Format WhatsApp message
        String itemsText = orderRequest.getItems().stream()
            .map(item -> String.format("- %s x%d @ ₹%.2f", item.getName(), item.getQuantity(), item.getPrice()))
            .collect(Collectors.joining("\n"));

        String message = String.format("Hello testing");

        // Generate WhatsApp link (for manual/test usage)
        String whatsappUrl = "https://wa.me/919834423725?text=" + URLEncoder.encode(message, StandardCharsets.UTF_8);
        log.info("WhatsApp message URL: {}", whatsappUrl);

        return new OrderResponse("success", "Order placed successfully");
    }
}
