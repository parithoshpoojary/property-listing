package com.pl.main.ws.userclass;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {

	User findByUsernameAndPassword(String username, String password);
	
	@Query(nativeQuery = true, value = "SELECT website_review, first_name, last_name FROM users where website_review is not null limit 3")
	List<String[]> findWebsiteReviews();

}
