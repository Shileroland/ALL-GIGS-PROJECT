package com.tm30.allgigsproject.service;

import java.util.List;

import com.tm30.allgigsproject.model.CountryModel;
import com.tm30.allgigsproject.model.GigsModel;
import com.tm30.allgigsproject.model.StateModel;


public interface GigsService {
	
		  
		 public List<GigsModel> listAllGigs();
		 
		 public GigsModel getGigsbyId(int id);
		 
		 public GigsModel getGigsbyRole(String role);
		 
		 public GigsModel addNewGigs(GigsModel gigsModel);
		 
		 public void deleteGig(int id);

		 public GigsModel findUserByEmail(String email);
		 
		 public List<CountryModel> listCountries();
		 
		 public List<StateModel> listStates();
			 

		
}
