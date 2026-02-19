package com.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

	//step -1 creating simple RestAPI
	// building 1 handler method
	
	@GetMapping("/msg")
	public String getMesage() {
		return "Hello-world-mintu-mumbai-nm-mh-1";
	}
}
