package com;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.model.PropertiesRepository;
import com.model.Property;
import com.model.UserProperty;
import com.model.UsersPropertiesRepository;
import com.model.UsersRepository;

@RestController
@CrossOrigin(origins = "*")
public class UserController {

	@Autowired
	UsersRepository usersRepository;
	
	@Autowired
	UsersPropertiesRepository upRepository;
	
	@Autowired
	PropertiesRepository propertiesRepository;

	// fetch website reviews
	@GetMapping("/websitereviews")
	public List<String[]> getWebsiteReviews() {
		return usersRepository.findWebsiteReviews();
	}
	
	//Fetch user's booked or wishlisted properties
	@GetMapping("/userproperties")
	public List<Property> getUserProperties(@RequestParam Integer userId, @RequestParam String listIn) {
		List<Integer> ids = upRepository.findPorpertyIds(userId, listIn);
		
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
	
//	//delete from wishlist or bookings
//	@DeleteMapping("/userproperty")
//	public void deleteProperty(@RequestParam Integer userId, @RequestParam Integer propId) {
//		try {
//			List<Integer> ids = (List<Integer>) upRepository.findIdsByUserIdAndPropertyId(userId, propId);
//			upRepository.deleteAllById(ids);
//		}
//		catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
}
