package com.harish.transportguest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.harish.transportguest.model.GuestTransportCancel;

public interface GuestTransportCancelRepository extends JpaRepository<GuestTransportCancel, Integer> 
{
	@Query("select h from GuestTransportCancel h where dropenddateandtime>=?1 and username=?2")
	Iterable<GuestTransportCancel> findByPickupstartdateandtimeAndUsername(String dropenddateandtime,String Username);
	
	Iterable<GuestTransportCancel> findByDept(String dept);
}
