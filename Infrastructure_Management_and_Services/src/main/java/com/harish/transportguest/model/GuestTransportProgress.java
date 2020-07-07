package com.harish.transportguest.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class GuestTransportProgress 
{
	@Id
	@GeneratedValue
	private int progressid;
	private String username;
	private int requestid;
	private String car_name;
	private String progressper;
	private String checker;
	private String pickuppoint;
	private String droppoint;
	private String pickupstartdateandtime;
	private String dropenddateandtime;
	public int getProgressid() {
		return progressid;
	}
	public void setProgressid(int progressid) {
		this.progressid = progressid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getRequestid() {
		return requestid;
	}
	public void setRequestid(int requestid) {
		this.requestid = requestid;
	}
	
	
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getProgressper() {
		return progressper;
	}
	public void setProgressper(String progressper) {
		this.progressper = progressper;
	}
	public String getChecker() {
		return checker;
	}
	public void setChecker(String checker) {
		this.checker = checker;
	}
	
	
	public String getPickuppoint() {
		return pickuppoint;
	}
	public void setPickuppoint(String pickuppoint) {
		this.pickuppoint = pickuppoint;
	}
	public String getDroppoint() {
		return droppoint;
	}
	public void setDroppoint(String droppoint) {
		this.droppoint = droppoint;
	}
	public String getPickupstartdateandtime() {
		return pickupstartdateandtime;
	}
	public void setPickupstartdateandtime(String pickupstartdateandtime) {
		this.pickupstartdateandtime = pickupstartdateandtime;
	}
	
	public String getDropenddateandtime() {
		return dropenddateandtime;
	}
	public void setDropenddateandtime(String dropenddateandtime) {
		this.dropenddateandtime = dropenddateandtime;
	}
	
	
	
	
}
