package com.harish.transport.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class TransportBooking 
{
	@Id
	private int bookingid;
	
	private String username;
	private String name;
	private String dept;
	private Long mnumber;
	private String car_name;
	private int carid;
	private int except_members;
	private String startdateandtime;
	private String enddateandtime;
	private String purpose;

	private int requestid;
	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
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
	
	public int getExcept_members() {
		return except_members;
	}
	public void setExcept_members(int except_members) {
		this.except_members = except_members;
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
	public String getStartdateandtime() {
		return startdateandtime;
	}
	public void setStartdateandtime(String startdateandtime) {
		this.startdateandtime = startdateandtime;
	}
	public String getEnddateandtime() {
		return enddateandtime;
	}
	public void setEnddateandtime(String enddateandtime) {
		this.enddateandtime = enddateandtime;
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
