package com.harish.transportguest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.transportguest.model.GuestTransportProgress;

@Transactional
public interface GuestTransportprogressRepository extends JpaRepository<GuestTransportProgress, Integer> 
{
	
	@Modifying
	@Query("update GuestTransportProgress set checker=?1 where requestid =?2")
	Integer updatecherker(String checker,int requestid);

	
	@Transactional
	@Modifying
	@Query("update GuestTransportProgress set progressper=?1 where requestid =?2")
	Integer updateprogressper(String presentage,int requestid);
	
	
	@Query("select h from GuestTransportProgress h where h.pickupstartdateandtime>=?1 and h.username=?2")
	Iterable<GuestTransportProgress> findByPickupenddateandtimeAndUsername(String pickupstartdateandtime,String username);
	
	GuestTransportProgress findByRequestid(int requestid);


	Integer deleteByRequestid(int requestid);
	
	/*@Modifying
	@Query("delete from LabProgress b where b.requestid=?1")
	Integer deleterequestid(int requestid);*/
}
