package com.harish.transportguest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.transportguest.model.GuestTransportBooking;

@Transactional

public interface GuestTransportBookingRepository extends JpaRepository<GuestTransportBooking, Integer> 
{
	@Query("select bookingid from GuestTransportBooking where carid=?1 and ((pickupstartdateandtime between ?2 and ?3) or (dropenddateandtime between ?2 and ?3))")
	Object[] findByBookingid(int carid,String startdateandtime,String dropenddateandtime);
	
	Long deleteByRequestid(int requestid);
	
	@Query("select h from GuestTransportBooking h where pickupstartdateandtime>=?1 and username=?2")
	Iterable<GuestTransportBooking> findByPickupstartdateandtimeAndUsername(String pickupstartdateandtime,String Username);
	
	@Modifying
	@Query("delete from GuestTransportBooking b where b.requestid=?1")
	Integer deleterequestid(int requestid);
	
	Iterable<GuestTransportBooking> findByDept(String dept);
	
	@Query("select h from GuestTransportBooking h where pickupstartdateandtime>=?1")
	Iterable<GuestTransportBooking> findByPickupstartdateandtime(String pickupstartdateandtime);
}
