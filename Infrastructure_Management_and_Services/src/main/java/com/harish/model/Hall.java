package com.harish.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Hall 
{
	@Id
	private int hallid;
	private String hall_name;
	private int capacity;
	
	public int getHallid() {
		return hallid;
	}
	public void setHallid(int hallid) {
		this.hallid = hallid;
	}
	public String getHall_name() {
		return hall_name;
	}
	public void setHall_name(String hall_name) {
		this.hall_name = hall_name;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	
	
}
