package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity(name = "properties")
public class Property {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String name;
	private String description;
	private Integer avgRating;
	private Integer locationId;
	private String listFor;
	
	@OneToOne
	@JoinColumn(name = "address_id", referencedColumnName = "id")
	private Address address;
	
	@ManyToOne
	@JoinColumn(name = "category_id", referencedColumnName = "id")
	private Category category;
	
	public Property() {
		super();
	}	

	public Property(Integer id, String name, String description, Integer avgRating, Address address, Integer locationId,
			Category category, String listFor) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.avgRating = avgRating;
		this.address = address;
		this.locationId = locationId;
		this.category = category;
		this.listFor = listFor;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getAvgRating() {
		return avgRating;
	}

	public void setAvgRating(Integer avgRating) {
		this.avgRating = avgRating;
	}
	
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Integer getLocationId() {
		return locationId;
	}

	public void setLocationId(Integer locationId) {
		this.locationId = locationId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getListFor() {
		return listFor;
	}

	public void setListFor(String listFor) {
		this.listFor = listFor;
	}

	@Override
	public String toString() {
		return "Property [id=" + id + ", name=" + name + ", description=" + description + ", avgRating=" + avgRating
				+ ", locationId=" + locationId + ", category=" + category
				+ ", listFor=" + listFor + "]";
	}
	
}
