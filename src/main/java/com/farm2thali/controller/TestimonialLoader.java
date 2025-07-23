package com.farm2thali.controller;

import com.farm2thali.model.Testimonial;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletContext;
import java.io.InputStream;
import java.util.List;

public class TestimonialLoader {
    public static List<Testimonial> loadTestimonials(ServletContext context) throws Exception {
        InputStream inputStream = context.getResourceAsStream("/assets/data/testimonials.json");
        ObjectMapper mapper = new ObjectMapper();
        return mapper.readValue(inputStream, mapper.getTypeFactory().constructCollectionType(List.class, Testimonial.class));
    }
}
