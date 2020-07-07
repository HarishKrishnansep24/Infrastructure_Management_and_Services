package com.harish.lab.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class LabProgress 
{
	@Id
	@GeneratedValue
	private int progressid;
	private String username;
	private int requestid;
	private String lab_name;
	private String progressper;
	private String checker;
	private String startdateandtime;
	private String enddateandtime;
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
	public String getLab_name() {
		return lab_name;
	}
	public void setLab_name(String lab_name) {
		this.lab_name = lab_name;
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
	
	
	
}
