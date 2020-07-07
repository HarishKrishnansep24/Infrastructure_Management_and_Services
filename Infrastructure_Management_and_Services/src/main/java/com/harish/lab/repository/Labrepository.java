package com.harish.lab.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.harish.lab.model.Lab;

public interface Labrepository extends JpaRepository<Lab, Integer> 
{
	Lab findByLabid(int labid);
	
}
