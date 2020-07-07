package com.harish.transportguest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.transportguest.model.GuestTransportRequest;

public interface GuestTransportRequestRepository extends JpaRepository<GuestTransportRequest, Integer>
{
	@Query("select requestid from GuestTransportRequest where car_name=?1 and pickupstartdateandtime = ?2 and dropenddateandtime=?3")
	GuestTransportRequest findByLab_nameAndPickupstartdateandtimeandtimeAndDropenddateandtime(String lab_name,String pickupstartdateandtime,String dropenddateandtime);
	
	//Iterable<Request> findByRequestMailid(String RequestMailid);
	
	GuestTransportRequest findByRequestid(int requestid);
	
	//long countByRequestMailid(String RequestMailid);
	
	@Query("select h from GuestTransportRequest h where dropenddateandtime>=?1 and requestMailid=?2")
	Iterable<GuestTransportRequest> findByDropenddateandtimeAndUsername(String dropenddateandtime,String requestmailid);
	
	@Query("select count(h) from GuestTransportRequest h where dropenddateandtime>=?1 and requestMailid=?2")
	long countByDropenddateandtimeAndUsername(String dropenddateandtime,String Username);
	
	@Transactional
	@Modifying
	@Query("update GuestTransportRequest set requestMailid=?1 where requestid=?2")
	Integer updaterequestmailid(String requestmailid,int requestid);
}
