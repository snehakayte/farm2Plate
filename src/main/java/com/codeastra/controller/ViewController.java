package com.codeastra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class ViewController {
	
	@GetMapping("/test")
	public String test() {
		log.info("::::::::::::::::::::::test called::::::::::::::::::::::");
		return "test"; 
	}
	

	@GetMapping("/")
	public String index() {
		log.info("::::::::::::::::::::::home called::::::::::::::::::::::");
		return "home";
	}
	
	@GetMapping("/about")
	public String about() {
		log.info("::::::::::::::::::::::about called::::::::::::::::::::::");
		return "about"; 
	}
	
	@GetMapping("/services")
	public String services() {
		log.info("::::::::::::::::::::::services called::::::::::::::::::::::");
		return "services"; 
	}
	
	@GetMapping("/contact")
	public String contact() {
		log.info("::::::::::::::::::::::Contact called::::::::::::::::::::::");
		return "contact"; 
	}
	
	@GetMapping("/testimonials")
	public String testimonials() {
		log.info("::::::::::::::::::::::testimonials called::::::::::::::::::::::");
		return "testimonials"; 
	}
	
	@GetMapping("/faq")
	public String faq() {
		log.info("::::::::::::::::::::::faq called::::::::::::::::::::::");
		return "faq"; 
	}
	
	@GetMapping("/order")
	public String appointment() {
		log.info("::::::::::::::::::::::order called::::::::::::::::::::::");
		return "order"; 
	}
	

}
