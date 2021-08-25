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
<<<<<<< HEAD:main/back-end/src/main/java/com/AuthController.java
			return usersRepository.save(user);
		}
		catch (Exception e) {
=======
			return userRepository.save(user);
		} catch (Exception e) {
>>>>>>> 3937a76c18f0805a40000691f5a33c6f5c6cbf7f:main/back-end/src/main/java/com/pl/main/ws/controllers/AuthController.java
			return new User();
		}
	}
	
	//Log In
	@PostMapping("/login")
	public User logIn(@RequestBody User user) {
		try {
<<<<<<< HEAD:main/back-end/src/main/java/com/AuthController.java
			return usersRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		}
		catch (Exception e) {
=======
			return userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		} catch (Exception e) {
>>>>>>> 3937a76c18f0805a40000691f5a33c6f5c6cbf7f:main/back-end/src/main/java/com/pl/main/ws/controllers/AuthController.java
			return new User();
		}
	}

}
