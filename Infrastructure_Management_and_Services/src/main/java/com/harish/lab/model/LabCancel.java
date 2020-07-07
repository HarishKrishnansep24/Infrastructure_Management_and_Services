package com.harish.lab.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class LabCancel 
{
	@Id
	@GeneratedValue
	private int cancelid;
	private String username;
	private String name;
	private String dept;
	private Long mnumber;
	private String lab_name;
	private int labid;
	private String startdateandtime;
	private String enddateandtime;
	private String purpose;
	private String guest_name;
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
	public String getLab_name() {
		return lab_name;
	}
	public void setLab_name(String lab_name) {
		this.lab_name = lab_name;
	}
	public int getLabid() {
		return labid;
	}
	public void setLabid(int labid) {
		this.labid = labid;
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
	public String getGuest_name() {
		return guest_name;
	}
	public void setGuest_name(String guest_name) {
		this.guest_name = guest_name;
	}
	public int getRequestid() {
		return requestid;
	}
	public void setRequestid(int requestid) {
		this.requestid = requestid;
	}
	
	
}
