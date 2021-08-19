package com.model;

import org.springframework.data.repository.CrudRepository;

public interface UsersRepository extends CrudRepository<User, Integer> {
	
	User findByUsernameAndPassword(String username, String password);

}
