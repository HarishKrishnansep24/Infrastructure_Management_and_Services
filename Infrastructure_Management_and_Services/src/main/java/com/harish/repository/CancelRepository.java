package com.harish.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.harish.model.CancelBooking;

public interface CancelRepository extends JpaRepository<CancelBooking, Integer> 
{
	//Iterable<CancelBooking> findByUsername(String username);
	
	@Query("select h from CancelBooking h where enddateandtime>=?1 and username=?2")
	Iterable<CancelBooking> findByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	Iterable<CancelBooking> findByDept(String dept);
}
