package com.harish.lab.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Lab 
{
	@Id
	private int labid;
	private String lab_name;
	private int no_of_system_available;
	private String lab_incharge_mailid;
	public int getLabid() {
		return labid;
	}
	public void setLabid(int labid) {
		this.labid = labid;
	}
	public String getLab_name() {
		return lab_name;
	}
	public void setLab_name(String lab_name) {
		this.lab_name = lab_name;
	}
	public int getNo_of_system_available() {
		return no_of_system_available;
	}
	public void setNo_of_system_available(int no_of_system_available) {
		this.no_of_system_available = no_of_system_available;
	}
	public String getLab_incharge_mailid() {
		return lab_incharge_mailid;
	}
	public void setLab_incharge_mailid(String lab_incharge_mailid) {
		this.lab_incharge_mailid = lab_incharge_mailid;
	}
	
	
}
