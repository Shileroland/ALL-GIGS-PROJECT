package com.tm30.allgigsproject.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tm30.allgigsproject.model.GigsModel;



@Repository("gigsRepository")
public interface GigsRepository extends JpaRepository<GigsModel, Integer> {
 
	List<GigsModel> findByRole(String role);

	GigsModel findGigsByRole(String role);
	
	
}