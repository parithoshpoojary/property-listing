package com.pl.main.ws.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pl.main.ws.locationclass.Location;
import com.pl.main.ws.locationclass.LocationsRepository;

@RestController
@CrossOrigin(origins = "*")
public class LocationsController {
	
	@Autowired
	LocationsRepository locationsRepository;
	
	//Fetch cities
	@GetMapping("/cities")
	public List<Location> getCities() {
		return (List<Location>) locationsRepository.findAll();
	}

}
