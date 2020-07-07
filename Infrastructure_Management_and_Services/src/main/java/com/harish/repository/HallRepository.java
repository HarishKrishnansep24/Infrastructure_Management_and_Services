package com.harish.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.harish.model.Hall;

public interface HallRepository extends JpaRepository<Hall, Integer> 
{
	Hall findByHallid(int hallid);
}
