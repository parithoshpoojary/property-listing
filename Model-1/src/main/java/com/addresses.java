package com;

import javax.persistence.Entity;
import javax.persistence.Table;

//import org.hibernate.annotations.Table;

@Entity
@Table(name="addresses")

public class addresses {

	private int id;
	private String line_1;
	private String line_2;
	private String landmark;
	private int pincode;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLine_1() {
		return line_1;
	}
	public void setLine_1(String line_1) {
		this.line_1 = line_1;
	}
	public String getLine_2() {
		return line_2;
	}
	public void setLine_2(String line_2) {
		this.line_2 = line_2;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
}
