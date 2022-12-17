package com.cav.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerController {
	
	 @GetMapping("/status")
	 public String getStatusAdmin() {
		 return "UP";
	 }

}
