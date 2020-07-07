package com.harish.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.transport.model.TransportRequest;

public interface TransportRequestRepository extends JpaRepository<TransportRequest, Integer>
{
	@Query("select requestid from TransportRequest where car_name=?1 and startdateandtime = ?2 and enddateandtime=?3")
	TransportRequest findByLab_nameAndStartdateandtimeAndEnddateandtime(String lab_name,String startdateandtime,String enddateandtime);
	
	//Iterable<Request> findByRequestMailid(String RequestMailid);
	
	TransportRequest findByRequestid(int requestid);
	
	//long countByRequestMailid(String RequestMailid);
	
	@Query("select h from TransportRequest h where enddateandtime>=?1 and requestMailid=?2")
	Iterable<TransportRequest> findByEnddateandtimeAndUsername(String enddateandtime,String requestmailid);
	
	@Query("select count(h) from TransportRequest h where enddateandtime>=?1 and requestMailid=?2")
	long countByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	@Transactional
	@Modifying
	@Query("update TransportRequest set requestMailid=?1 where requestid=?2")
	Integer updaterequestmailid(String requestmailid,int requestid);
}
