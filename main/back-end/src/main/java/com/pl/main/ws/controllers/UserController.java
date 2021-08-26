package com.pl.main.ws.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pl.main.ws.propertyclass.PropertiesRepository;
import com.pl.main.ws.propertyclass.Property;
import com.pl.main.ws.userclass.UserRepository;
import com.pl.main.ws.userproperty.UserProperty;
import com.pl.main.ws.userproperty.UsersPropertiesRepository;

@RestController
@CrossOrigin(origins = "*")
public class UserController {

	@Autowired
	UserRepository usersRepository;
	
	@Autowired
	PropertiesRepository propertiesRepository;
	
	@Autowired
	UsersPropertiesRepository upRepository;

	// fetch website reviews
	@GetMapping("/websitereviews")
	public List<String[]> getWebsiteReviews() {
		return usersRepository.findWebsiteReviews();
	}
	
	//Fetch user's booked or wishlisted properties
	@GetMapping("/userproperties")
	public List<Property> getUserProperties(@RequestParam Integer userId, @RequestParam String listIn) {
		List<Integer> ids = upRepository.findPropertyIds(userId, listIn);
		
		return (List<Property>) propertiesRepository.findPropertiesByIds(ids);	
	}
		
	//wishlisting by user
	@PutMapping("/userproperties")
	public void setUserProperties(@RequestBody UserProperty up) {
		try {
			upRepository.save(up);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
