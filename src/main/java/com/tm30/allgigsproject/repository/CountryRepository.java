package com.tm30.allgigsproject.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tm30.allgigsproject.model.CountryModel;
import com.tm30.allgigsproject.model.GigsModel;



@Repository("countryRepository")
public interface CountryRepository extends JpaRepository<CountryModel, Long> {
 

	
}
