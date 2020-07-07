package com.harish.lab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.lab.model.LabRequest;

public interface LabRequestRepository extends JpaRepository<LabRequest, Integer>
{
	@Query("select requestid from LabRequest where lab_name=?1 and startdateandtime = ?2 and enddateandtime=?3")
	LabRequest findByLab_nameAndStartdateandtimeAndEnddateandtime(String lab_name,String startdateandtime,String enddateandtime);
	
	//Iterable<Request> findByRequestMailid(String RequestMailid);
	
	LabRequest findByRequestid(int requestid);
	
	//long countByRequestMailid(String RequestMailid);
	LabRequest findByRequestMailid(int requestid);
	
	@Query("select h from LabRequest h where enddateandtime>=?1 and requestMailid=?2")
	Iterable<LabRequest> findByEnddateandtimeAndUsername(String enddateandtime,String requestmailid);
	
	@Query("select count(h) from LabRequest h where enddateandtime>=?1 and requestMailid=?2")
	long countByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	@Transactional
	@Modifying
	@Query("update LabRequest set requestMailid=?1 where requestid=?2")
	Integer updaterequestmailid(String requestmailid,int requestid);
}
