package com.harish.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.transport.model.TransportBooking;

@Transactional

public interface TransportBookingRepository extends JpaRepository<TransportBooking, Integer> 
{
	@Query("select bookingid from TransportBooking where carid=?1 and ((startdateandtime between ?2 and ?3) or (enddateandtime between ?2 and ?3))")
	Object[] findByBookingid(int carid,String startdateandtime,String enddateandtime);
	
	Long deleteByRequestid(int requestid);
	
	@Query("select h from TransportBooking h where enddateandtime>=?1 and username=?2")
	Iterable<TransportBooking> findByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	@Modifying
	@Query("delete from TransportBooking b where b.requestid=?1")
	Integer deleterequestid(int requestid);
	
	Iterable<TransportBooking> findByDept(String dept);
	
	@Query("select h from TransportBooking h where enddateandtime>=?1")
	Iterable<TransportBooking> findByEnddateandtime(String enddateandtime);
}
