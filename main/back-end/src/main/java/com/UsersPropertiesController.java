package com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;


import com.model.UsersPropertiesRepository;

@RestController
@CrossOrigin(origins = "*")
public class UsersPropertiesController {

	@Autowired
	UsersPropertiesRepository usersPropertiesRepository;
	
	

}
