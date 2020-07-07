package com.harish.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.harish.transport.model.TransportCancel;

public interface TransportCancelRepository extends JpaRepository<TransportCancel, Integer> 
{
	@Query("select h from TransportCancel h where enddateandtime>=?1 and username=?2")
	Iterable<TransportCancel> findByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	Iterable<TransportCancel> findByDept(String dept);
}
