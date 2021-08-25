package com.pl.main.ws.locationclass;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "locations")
public class Location {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	String city;

	public Location() {
		
	}



	public Location(Integer id, String city) {
		super();
		this.id = id;
		this.city = city;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}	
	
}
