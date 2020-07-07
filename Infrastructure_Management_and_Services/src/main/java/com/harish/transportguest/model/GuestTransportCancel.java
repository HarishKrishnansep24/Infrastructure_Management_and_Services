package com.harish.transportguest.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class GuestTransportCancel 
{
	@Id
	@GeneratedValue
	private int cancelid;
	private String username;
	private String name;
	private String dept;
	private Long mnumber;
	private String car_name;
	private int carid;
	private int noOfpersons;
	private String pickuppoint;
	private String droppoint;
	private String pickupstartdateandtime;
	private String dropenddateandtime;
	private String purpose;
	private int requestid;
	public int getCancelid() {
		return cancelid;
	}
	public void setCancelid(int cancelid) {
		this.cancelid = cancelid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public Long getMnumber() {
		return mnumber;
	}
	public void setMnumber(Long mnumber) {
		this.mnumber = mnumber;
	}
	
	
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}
	
	
	public int getNoOfpersons() {
		return noOfpersons;
	}
	public void setNoOfpersons(int noOfpersons) {
		this.noOfpersons = noOfpersons;
	}
	public String getPickupstartdateandtime() {
		return pickupstartdateandtime;
	}
	public void setPickupstartdateandtime(String pickupstartdateandtime) {
		this.pickupstartdateandtime = pickupstartdateandtime;
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
	public String getDropenddateandtime() {
		return dropenddateandtime;
	}
	public void setDropenddateandtime(String dropenddateandtime) {
		this.dropenddateandtime = dropenddateandtime;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public int getRequestid() {
		return requestid;
	}
	public void setRequestid(int requestid) {
		this.requestid = requestid;
	}
	
	
}
