package com.model;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UsersPropertiesRepository extends CrudRepository<UserProperty, Integer> {
	
	@Query(nativeQuery = true, value = "select property_id from users_properties where user_id=?1 and list_in=?2 ;")
	List<Integer> findPorpertyIds(int userId, String listIn);
	
	@Query(nativeQuery = true, value = "select review from users_properties where property_id = :propId")
	List<String> findPropertyReview(int propId);
	
//	@Query(nativeQuery = true, value = "select id from users_properties where user_id=?1 and property_id=?2 ;")
//	List<Integer> findIdsByUserIdAndPropertyId(int userId, int propId);
//	
//	@Query(nativeQuery = true, value = "delete from users_properties where id in :id ;")
//	void deleteByUserIdAndPropertyId(List<Integer> ids);
}
