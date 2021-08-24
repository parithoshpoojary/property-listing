package com;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.model.PropertiesRepository;
import com.model.UsersRepository;

@RestController
@CrossOrigin(origins = "*")
public class UserController {

	@Autowired
	UsersRepository usersRepository;
	
	@Autowired
	PropertiesRepository propertiesRepository;

	// fetch website reviews
	@GetMapping("/websitereviews")
	public List<String[]> getWebsiteReviews() {
		return usersRepository.findWebsiteReviews();
	}
	
}
