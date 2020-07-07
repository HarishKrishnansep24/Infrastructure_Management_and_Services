package com.harish.lab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.harish.lab.model.LabCancel;

public interface LabCancelRepository extends JpaRepository<LabCancel, Integer> 
{
	@Query("select h from LabCancel h where enddateandtime>=?1 and username=?2")
	Iterable<LabCancel> findByEnddateandtimeAndUsername(String enddateandtime,String Username);
	
	Iterable<LabCancel> findByDept(String dept);
}
