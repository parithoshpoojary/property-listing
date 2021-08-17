package com;

import java.sql.Date;

import javax.persistence.Column;

//import org.hibernate.annotations.Table;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="admins")
public class admins {
	
	@Id
	@Column(name="id")
	private int id;
	@Column(name="first_name")
	private String first_name;
	@Column(name="last_name")
	private String last_name;
	@Column(name="username")
	private String username;
	@Column(name="pwd")
	private String pwd;
	@Column(name="website_review")
	private String website_review;
	public int getId() {
		return id;
	}
	public void setId(int admin_id) {
		this.id = admin_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String password) {
		this.pwd = password;
	}
	public String getWebsite_review() {
		return website_review;
	}
	public void setWebsite_review(String website_review) {
		this.website_review = website_review;
	}
	
	
	

}
