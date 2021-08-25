package com.pl.main.ws.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.pl.main.ws.userclass.*;

@RestController
@CrossOrigin
public class AuthController {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/viewall")
	public List<User> viewAll(){
		return (List<User>) userRepository.findAll();
	}
	
	//Sign Up
	@PostMapping("/signup")
	public User singUp(@RequestBody User user) {
		try {
			return userRepository.save(user);
		} catch (Exception e) {
			return new User();
		}
	}
	
	//Log In
	@PostMapping("/login")
	public User logIn(@RequestBody User user) {
		try {
			return userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		} catch (Exception e) {
			return new User();
		}
	}

}
