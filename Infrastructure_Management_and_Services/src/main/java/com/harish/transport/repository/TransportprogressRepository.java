package com.harish.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.transport.model.TransportProgress;

@Transactional
public interface TransportprogressRepository extends JpaRepository<TransportProgress, Integer> 
{
	
	@Modifying
	@Query("update TransportProgress set checker=?1 where requestid =?2")
	Integer updatecherker(String checker,int requestid);

	
	@Transactional
	@Modifying
	@Query("update TransportProgress set progressper=?1 where requestid =?2")
	Integer updateprogressper(String presentage,int requestid);
	
	
	@Query("select h from TransportProgress h where enddateandtime>=?1 and username=?2")
	Iterable<TransportProgress> findByEnddateandtimeAndUsername(String enddateandtime,String username);
	
	TransportProgress findByRequestid(int requestid);


	Integer deleteByRequestid(int requestid);
	
	/*@Modifying
	@Query("delete from LabProgress b where b.requestid=?1")
	Integer deleterequestid(int requestid);*/
}
