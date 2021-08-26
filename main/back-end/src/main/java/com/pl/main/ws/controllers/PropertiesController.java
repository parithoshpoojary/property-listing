package com.pl.main.ws.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pl.main.ws.propertyclass.PropertiesRepository;
import com.pl.main.ws.propertyclass.Property;
import com.pl.main.ws.userproperty.UserProperty;
import com.pl.main.ws.userproperty.UsersPropertiesRepository;

@RestController
@CrossOrigin(origins = "*")
public class PropertiesController {

	@Autowired
	PropertiesRepository propertiesRepository;
	
	@Autowired
	UsersPropertiesRepository upRepository;

	// Fetch all properties
		@GetMapping("/propertyall")
		public List<Property> getPropertiesAll() {
			return (List<Property>) propertiesRepository.findAll();
		}

		// Fetch properties by location
		@GetMapping("/propertybylocation/{locationId}")
		public List<Property> getPropertiesByCity(@PathVariable int locationId) {
			return (List<Property>) propertiesRepository.findByLocationId(locationId);
		}

		// Fetch properties by Category
		@GetMapping("/propertybycategory/{categoryId}")
		public List<Property> getPropertiesByCategory(@PathVariable int categoryId) {
			return (List<Property>) propertiesRepository.findByCategoryId(categoryId);
		}

		// Fetch properties by price range
		@GetMapping("/propertybyprice")
		public List<Property> getPropertiesByPrice(@RequestParam float lowPrice, @RequestParam float highPrice) {
			return (List<Property>) propertiesRepository.findByPriceBetween(lowPrice, highPrice);
		}
		
		// Fetch properties by Name
		@GetMapping("/propertybyname/{name}")
		public List<Property> getPropertiesByName(@PathVariable String name) {
			String nameLike = "%" + name + "%";
			return (List<Property>) propertiesRepository.findByNameLike(nameLike);
		}

		// Fetch properties by Listing category (Buy or Rent)
		@GetMapping("/propertybylisttype/{listFor}")
		public List<Property> getPropertiesByListFor(@PathVariable String listFor) {
			return (List<Property>) propertiesRepository.findByListFor(listFor);
		}
		
		//Fetch property by id
		@GetMapping("/property/{id}")
		public Property getProperty(@PathVariable Integer id) {
			Optional<Property> propOptional = propertiesRepository.findById(id);
			if (propOptional.isPresent())
				return propOptional.get();
			else
				return new Property();
		}

		
		// Fetch properties by filtering
		@GetMapping("/propertybyfiltering")
		public List<Property> getPropByLocAndCat(@RequestParam(required = true) String listFor,
				@RequestParam(required = false) Integer locationId,
				@RequestParam(required = false) Integer categoryId,
				@RequestParam(required = false) Integer sortBy) {
			
			if ((categoryId != null) && (locationId==null)) {
				
				if (sortBy==null)
					return (List<Property>) propertiesRepository.findByCategoryIdAndListFor(categoryId, listFor);
				
				else if (sortBy==1)
					return (List<Property>) propertiesRepository.findByCategoryIdAndListForOrderByPriceAsc(categoryId, listFor);
					
				else if (sortBy==2) 
					return (List<Property>) propertiesRepository.findByCategoryIdAndListForOrderByPriceDesc(categoryId, listFor);
					
				else if (sortBy==3)
					return (List<Property>) propertiesRepository.findByCategoryIdAndListForOrderByAvgRatingDesc(categoryId, listFor);
				
			}
			
			else if ((locationId != null) && (categoryId == null)) {
				
				if (sortBy==null)
					return (List<Property>) propertiesRepository.findByLocationIdAndListFor(locationId, listFor);
				
				else if (sortBy==1)
					return (List<Property>) propertiesRepository.findByLocationIdAndListForOrderByPriceAsc(locationId, listFor);
					
				else if (sortBy==2) 
					return (List<Property>) propertiesRepository.findByLocationIdAndListForOrderByPriceDesc(locationId, listFor);
					
				else if (sortBy==3)
					return (List<Property>) propertiesRepository.findByLocationIdAndListForOrderByAvgRatingDesc(locationId, listFor);	
				
			}
			
			else if ((locationId != null) && (categoryId != null)) {
				
				if (sortBy==null)
					return (List<Property>) propertiesRepository.findByLocationIdAndCategoryIdAndListFor(locationId, categoryId, listFor);
				
				else if (sortBy==1)
					return (List<Property>) propertiesRepository.findByLocationIdAndCategoryIdAndListForOrderByPriceAsc(locationId, categoryId, listFor);
					
				else if (sortBy==2) 
					return (List<Property>) propertiesRepository.findByLocationIdAndCategoryIdAndListForOrderByPriceDesc(locationId, categoryId, listFor);
					
				else if (sortBy==3)
					return (List<Property>) propertiesRepository.findByLocationIdAndCategoryIdAndListForOrderByAvgRatingDesc(locationId, categoryId, listFor);	
				
			}
			
			return (List<Property>) propertiesRepository.findByListFor(listFor);
			
		}
		//Fetch reviews of particular property
		@GetMapping("/propertyreview/{propId}")
		public List<String> getPropReview(@PathVariable Integer propId) {
			return (List<String>) upRepository.findPropertyReview(propId);
		}
		
		//save data to review
		@PutMapping("/propertyreview")
		public void setPropReview(@RequestBody UserProperty up) {
			try {
				upRepository.save(up);
				System.out.println(upRepository.save(up));
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		}

}
