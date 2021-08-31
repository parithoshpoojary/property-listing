package com.pl.main.ws.propertyclass;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface PropertiesRepository extends CrudRepository<Property, Integer> {
	
List<Property> findByLocationId(int locationId);
	
	List<Property> findByCategoryId(int categoryId);
	
	List<Property> findByNameLike(String name);
	
	List<Property> findByPriceBetween(float lowPrice, float highPrice);
	
	//Filtering Queries based on filtering form submitted...
	List<Property> findByCategoryIdAndListForOrderByPriceAsc(int categoryId, String listFor);
	
	List<Property> findByCategoryIdAndListForOrderByPriceDesc(int categoryId, String listFor);
	
	List<Property> findByCategoryIdAndListForOrderByAvgRatingDesc(int categoryId, String listFor);

	List<Property> findByCategoryIdAndListFor(int categoryId, String listFor);
	
	@Query(nativeQuery = true, value = "SELECT * FROM properties WHERE id in :ids ;")
	List<Property> findPropertiesByIds(List<Integer> ids);
	
	Property findById(int id);

	List<Property> findByLocationIdAndListForOrderByPriceAsc(int locationId, String listFor);
	
	List<Property> findByLocationIdAndListForOrderByPriceDesc(int locationId, String listFor);
		
	List<Property> findByLocationIdAndListForOrderByAvgRatingDesc(int locationId, String listFor);
	
	List<Property> findByLocationIdAndListFor(int locationId, String listFor);
	
	List<Property> findByLocationIdAndCategoryIdAndListForOrderByPriceAsc(int locationId, int categoryId, String listFor);
	
	List<Property> findByLocationIdAndCategoryIdAndListForOrderByPriceDesc(int locationId, int categoryId, String listFor);
	
	List<Property> findByLocationIdAndCategoryIdAndListForOrderByAvgRatingDesc(int locationId, int categoryId, String listFor);
	
	List<Property> findByLocationIdAndCategoryIdAndListFor(int LocationId, int categoryId, String listFor);
	
	List<Property> findByListFor(String listFor);
}
