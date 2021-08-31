package com.pl.main.ws.userproperty;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "users_properties")
public class UserProperty {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private Integer userId;
	private Integer propertyId;
	private String listIn;
	private Integer rating;
	private String review;
	
	public UserProperty() {
		super();
	}
	
	public UserProperty(Integer userId, Integer propertyId, String listIn, Integer rating, String review) {
		super();
		this.userId = userId;
		this.propertyId = propertyId;
		this.listIn = listIn;
		this.rating = rating;
		this.review = review;
	}
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(Integer propertyId) {
		this.propertyId = propertyId;
	}
	public String getListIn() {
		return listIn;
	}
	public void setListIn(String listIn) {
		this.listIn = listIn;
	}
	public Integer getRating() {
		return rating;
	}
	public void setRating(Integer rating) {
		this.rating = rating;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}

	@Override
	public String toString() {
		return "UserProperty [userId=" + userId + ", propertyId=" + propertyId + ", listIn=" + listIn + ", rating="
				+ rating + ", review=" + review + "]";
	}
	
}
