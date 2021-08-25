package com.pl.main.ws.userproperty;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UsersPropertiesRepository extends CrudRepository<UserProperty, Integer> {
	
	@Query(nativeQuery = true, value = "Select property_id from users_properties where user_id=?1 and list_in=?2 ;")
	List<Integer> findPropertyIds(int userId, String listIn);
	
	@Query(nativeQuery = true, value = "select review from users_properties where property_id = :propId")
	List<String> findPropertyReview(int propId);

}
