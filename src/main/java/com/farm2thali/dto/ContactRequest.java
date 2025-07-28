package com.farm2thali.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class ContactRequest {
    private String name;
    private String email;
    private String phone;
    private String message;

}
