package com.model;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface PropertiesRepository extends CrudRepository<Property, Integer> {
	
	List<Property> findByLocationId(int locationId);
}
