package com.harish.lab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.lab.model.LabBooking;

@Transactional

public interface LabBookingRepository extends JpaRepository<LabBooking, Integer> 
{
	@Query("select bookingid from LabBooking where labid=?1 and ((startdateandtime between ?2 and ?3) or (enddateandtime between ?2 and ?3))")
	Object[] findByBookingid(int labid,String startdateandtime,String enddateandtime);
	
	Long deleteByRequestid(int requestid);
	
	@Query("select h from LabBooking h where enddateandtime>=?1 and username=?2")
	Iterable<LabBooking> findByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	Iterable<LabBooking> findByDept(String dept);
	
	@Modifying
	@Query("delete from LabBooking b where b.requestid=?1")
	Integer deleterequestid(int requestid);
	
	@Query("select h from LabBooking h where enddateandtime>=?1")
	Iterable<LabBooking> findByEnddateandtime(String enddateandtime);
}
