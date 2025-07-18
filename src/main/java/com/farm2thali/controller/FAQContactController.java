package com.farm2thali.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Log4j2
@Controller
public class FAQContactController {
    @Autowired
    private JavaMailSender mailSender;

    @PostMapping("/question-submit")
    public String submitContactForm(@RequestParam("name") String name,
                                    @RequestParam("email") String email,
                                    @RequestParam("question") String question,
                                    Model model) {


        try {
            SimpleMailMessage mail = new SimpleMailMessage();
            mail.setTo("contact@farm2thali.com");
            mail.setSubject("New Question  from " + name);
            mail.setText("Name: " + name + "\nEmail: " + email + "\n\nQuestion:\n" + question);
            mail.setReplyTo(email);

            mailSender.send(mail);

            model.addAttribute("success", true);
        } catch (Exception e) {
            model.addAttribute("error", "There was an issue submitting your question.");
        }
        return "faq";
    }
}
