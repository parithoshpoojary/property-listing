package com.pl.main.ws.image;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.pl.main.ws.propertyclass.Property;

@Entity(name = "images")
public class Image {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String imageurl;
	private Integer size;
	
	@ManyToOne
	@JoinColumn(name = "property_id")
	private Property property;

	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Image(Integer id, String imageurl, int size, Property property) {
		super();
		this.id = id;
		this.imageurl = imageurl;
		this.size = size;
		this.property = property;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	@JsonIgnore
	public Property getProperty() {
		return property;
	}

	public void setProperty(Property property) {
		this.property = property;
	}

	@Override
	public String toString() {
		return "Image [id=" + id + ", imageurl=" + imageurl + ", size=" + size + ", property=" + property + "]";
	}

}
