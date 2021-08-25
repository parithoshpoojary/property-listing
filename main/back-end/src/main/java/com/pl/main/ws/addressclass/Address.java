package com.pl.main.ws.addressclass;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "addresses")
public class Address{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column(name = "line_1")
	private String line1;
	@Column(name = "line_2")
	private String line2;
	private String landmark;
	private Integer pincode;
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Address(Integer id, String line1, String line2, String landmark, Integer pincode) {
		super();
		this.id = id;
		this.line1 = line1;
		this.line2 = line2;
		this.landmark = landmark;
		this.pincode = pincode;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLine1() {
		return line1;
	}
	public void setLine1(String line1) {
		this.line1 = line1;
	}
	public String getLine2() {
		return line2;
	}
	public void setLine2(String line2) {
		this.line2 = line2;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public Integer getPincode() {
		return pincode;
	}
	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", line1=" + line1 + ", line2=" + line2 + ", landmark=" + landmark + ", pincode="
				+ pincode + "]";
	}
	
}
