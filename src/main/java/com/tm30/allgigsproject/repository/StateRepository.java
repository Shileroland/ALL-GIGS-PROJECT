package com.tm30.allgigsproject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tm30.allgigsproject.model.StateModel;



@Repository("stateRepository")
public interface StateRepository extends JpaRepository<StateModel, Long> {
 
	

	
}
