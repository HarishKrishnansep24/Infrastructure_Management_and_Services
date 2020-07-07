package com.harish.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.harish.transport.model.Cab;

public interface CabRepository extends JpaRepository<Cab, Integer> 
{
	Cab findByCarid(int carid);
}
