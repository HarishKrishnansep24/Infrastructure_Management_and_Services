package com.harish.lab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.lab.model.LabProgress;

@Transactional
public interface LabprogressRepository extends JpaRepository<LabProgress, Integer> 
{
	
	@Modifying
	@Query("update LabProgress set checker=?1 where requestid =?2")
	Integer updatecherker(String checker,int requestid);

	
	@Transactional
	@Modifying
	@Query("update LabProgress set progressper=?1 where requestid =?2")
	Integer updateprogressper(String presentage,int requestid);
	
	
	@Query("select h from LabProgress h where enddateandtime>=?1 and username=?2")
	Iterable<LabProgress> findByEnddateandtimeAndUsername(String enddateandtime,String username);
	
	LabProgress findByRequestid(int requestid);


	Integer deleteByRequestid(int requestid);
	
	/*@Modifying
	@Query("delete from LabProgress b where b.requestid=?1")
	Integer deleterequestid(int requestid);*/
}
