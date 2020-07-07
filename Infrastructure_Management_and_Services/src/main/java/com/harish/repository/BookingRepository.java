package com.harish.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.harish.model.Booking;

@Transactional
@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> 
{
	@Query("select bookingid from Booking where hallid=?1 and ((startdateandtime between ?2 and ?3) or (enddateandtime between ?2 and ?3))")
	Object[] findByBookingid(int hallid,String startdateandtime,String enddateandtime);
	
	Long deleteByRequestid(int requestid);
	
	Iterable<Booking> findByDept(String dept);
	
	@Query("select h from Booking h where enddateandtime>=?1 and username=?2")
	Iterable<Booking> findByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	@Modifying
	@Query("delete from Booking b where b.requestid=?1")
	Integer deleterequestid(int requestid);
	
	@Query("select h from Booking h where enddateandtime>=?1")
	Iterable<Booking> findByEnddateandtime(String enddateandtime);
}
