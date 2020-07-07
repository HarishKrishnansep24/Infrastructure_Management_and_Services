package com.harish.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.harish.transportguest.model.Transport;

public interface Transportrepository extends JpaRepository<Transport, Integer> 
{
	Transport findByCarid(int carid);
	
	
}
