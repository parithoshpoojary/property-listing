package com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.User;
import com.model.UsersRepository;

@RestController
@CrossOrigin(origins = "*")
public class AuthController {
	
	@Autowired
	UsersRepository usersRepository;
	
	//Sign Up
	@PostMapping("/signup")
	public User singUp(@RequestBody User user) {
		return usersRepository.save(user);
	}
	
	//Log In
	@PostMapping("/login")
	public User logIn(@RequestBody User user) {
		return usersRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
	}

}
