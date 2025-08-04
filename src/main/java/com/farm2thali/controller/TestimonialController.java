package com.farm2thali.controller;

import com.farm2thali.model.Testimonial;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@Controller
@Log4j2
public class TestimonialController {

    @Autowired
    private ServletContext servletContext;

    private final ObjectMapper objectMapper = new ObjectMapper();

    @Value("${testimonial.file.path:/assets/data/testimonials.json}")
    private String testimonialFilePath;

    @GetMapping("/testimonials")
    public String loadTestimonials(Model model) {
        try (InputStream inputStream = servletContext.getResourceAsStream(testimonialFilePath)) {
            if (inputStream != null) {
                List<Testimonial> testimonials = Arrays.asList(
                        objectMapper.readValue(inputStream, Testimonial[].class));
                model.addAttribute("testimonials", testimonials);
            } else {
                model.addAttribute("testimonials", Collections.emptyList());
            }
        } catch (Exception e) {
            log.error("Failed to load testimonials", e);
            model.addAttribute("testimonials", Collections.emptyList());
        }
        return "testimonials"; // JSP file: /WEB-INF/views/testimonials.jsp
    }

    @PostMapping("/submitReview")
    public String submitReview(@ModelAttribute Testimonial testimonial, RedirectAttributes redirectAttributes, Model model) {
        try {
            String jsonPath = servletContext.getRealPath(testimonialFilePath);
            File jsonFile = new File(jsonPath);

            List<Testimonial> existingTestimonials = new ArrayList<>();
            if (jsonFile.exists()) {
                existingTestimonials = objectMapper.readValue(jsonFile, new TypeReference<List<Testimonial>>() {
                });
            }

//            if (testimonial.getImage() == null || testimonial.getImage().isBlank()) {
//                testimonial.setImage("default.jpg");
//            }

            existingTestimonials.add(testimonial);
            objectMapper.writerWithDefaultPrettyPrinter().writeValue(jsonFile, existingTestimonials);
            model.addAttribute("testimonials", existingTestimonials);

            redirectAttributes.addFlashAttribute("successMessage", "Thanks for your review!");
        } catch (Exception e) {
            log.error("Failed to save testimonial", e);
            redirectAttributes.addFlashAttribute("errorMessage", "Error saving your review. Please try again.");
        }

        return "testimonials";
    }
}
