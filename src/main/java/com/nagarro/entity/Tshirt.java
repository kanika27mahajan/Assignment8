package com.nagarro.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Tshirt {
	
	@Id
	@Column(length = 20)
	private String id;

	private String colour;
	private String tname;
	private String gender;
	private String availability;
	private double price;
	private String size;
	private double rating;
	
	public Tshirt(){
		//This is the default constructor;
	}
	
	public String getId() {
		return id;
	}

	public String getColour() {
		return colour;
	}

	public String getName() {
		return tname;
	}

	public String getGender() {
		return gender;
	}

	public String getAvailability() {
		return availability;
	}

	public double getPrice() {
		return price;
	}

	public String getSize() {
		return size;
	}

	public double getRating() {
		return rating;
	}
	
	public void setId(String id) {
		this.id = id;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public void setName(String name) {
		this.tname = name;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public Tshirt(String id, String name, String color, String gender, String size, String price, String rating,String aval){
		this.id=id;
		this.colour=color;
		this.tname=name;
		this.gender=gender;
		this.availability=aval;
		this.price=Double.parseDouble(price);
		this.size=size;
		this.rating=Double.parseDouble(rating);	
	}

}


