package com.cloud.sample;

import java.util.Arrays;
import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CloudSampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(CloudSampleApplication.class, args);
	}
	
	@CrossOrigin(origins = "*", allowedHeaders = "*")
	@RequestMapping("getService")
	public List<String> getService() {
		return Arrays.asList("Mahe", "jegan", "kumar", "hemanth");  
	}

}
