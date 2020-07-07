package com.harish.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.model.HallProgress;
@Transactional
public interface HallProgressRepository extends JpaRepository<HallProgress, Integer>
{
	@Transactional
	@Modifying
	@Query("update HallProgress set checker=?1 where requestid =?2")
	Integer updatecherker(String checker,int requestid);

	
	@Transactional
	@Modifying
	@Query("update HallProgress set progressper=?1 where requestid =?2")
	Integer updateprogressper(String presentage,int requestid);
	
	
	@Query("select h from HallProgress h where enddateandtime>=?1 and username=?2")
	Iterable<HallProgress> findByEnddateandtimeAndUsername(String enddateandtime,String username);
	
	//Iterable<HallProgress> findByUsername(String Username);
	Integer deleteByRequestid(int requestid);
	//@Modifying
	//@Query("delete from HallProgress where requestid=?1")
	//Integer deleterequestid(int requestid);


	HallProgress findByRequestid(int requestid);
}
