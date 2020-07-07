package com.harish.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.model.Request;

public interface RequestRepository extends JpaRepository<Request, Integer> 
{
	@Query("select requestid from Request where hall_name=?1 and startdateandtime = ?2 and enddateandtime=?3")
	Request findByHall_nameAndStartdateandtimeAndEnddateandtime(String hall_name,String startdateandtime,String enddateandtime);
	
	//Iterable<Request> findByRequestMailid(String RequestMailid);
	
	Request findByRequestid(int requestid);
	
	//long countByRequestMailid(String RequestMailid);
	
	@Query("select h from Request h where enddateandtime>=?1 and requestMailid=?2")
	Iterable<Request> findByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	@Query("select count(h) from Request h where enddateandtime>=?1 and requestMailid=?2")
	long countByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	@Transactional
	@Modifying
	@Query("update Request set requestMailid=?1 where requestid=?2")
	Integer updaterequestmailid(String requestmailid,int requestid);
}
