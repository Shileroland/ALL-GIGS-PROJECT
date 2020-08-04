package com.tm30.allgigsproject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tm30.allgigsproject.model.CountryModel;
import com.tm30.allgigsproject.model.GigsModel;
import com.tm30.allgigsproject.model.StateModel;
import com.tm30.allgigsproject.repository.CountryRepository;
import com.tm30.allgigsproject.repository.GigsRepository;
import com.tm30.allgigsproject.repository.StateRepository;

@Service("employeeService")
public class GigsServiceImpl implements GigsService {

	private static List<CountryModel> countries = new ArrayList<CountryModel>();
	
	
	@Autowired
	private GigsRepository gigsRepository;
	
	@Autowired
	private CountryRepository countryRepository;
	
	@Autowired
	private StateRepository stateRepository;


	public List<GigsModel> listAllGigs() {

		return gigsRepository.findAll();
	}

	public GigsModel getGigsbyId(int id) {
		return gigsRepository.findById(id).orElse(null);
	}

	public GigsModel getGigsbyRole(String role) {
		return gigsRepository.findGigsByRole(role);
	}

	public GigsModel addNewGigs(GigsModel gigsModel) {

		return gigsRepository.save(gigsModel);
	}

	public void deleteGig(int id) {
		gigsRepository.deleteById(id);
		
	}

	@Override
	public GigsModel findUserByEmail(String email) {
		//gigsRepository
		return null;
	}
	
	public List<CountryModel> listCountries() {
		List<CountryModel> filteredCountries = new ArrayList<CountryModel>();
		 countries = countryRepository.findAll();
			for(CountryModel country: countries) {
			
				filteredCountries.add(country);
				System.out.println(country.getCountryId() +":" +country.getCountryName());
		}

		return filteredCountries;
	}
	
	public List<StateModel> listStates() {

		return  stateRepository.findAll();
	}

}
