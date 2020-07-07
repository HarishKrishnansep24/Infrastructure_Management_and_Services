package com.harish.transport.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cab 
{
	@Id
	private int carid;
	private String car_name;
	private int available_seats;
	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public int getAvailable_seats() {
		return available_seats;
	}
	public void setAvailable_seats(int available_seats) {
		this.available_seats = available_seats;
	}
	
	
	
	
	
	
}
