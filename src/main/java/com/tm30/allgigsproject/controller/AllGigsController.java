package com.tm30.allgigsproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tm30.allgigsproject.model.GigsModel;
import com.tm30.allgigsproject.service.GigsService;

@Controller
public class AllGigsController {

	@Autowired
	private GigsService gigsService;

	@GetMapping("/")
	public String ListAllGigs(Model model) {
		model.addAttribute("listGigs", gigsService.listAllGigs());
		return "gigs";
	}

	@RequestMapping(value="/delete-gig", method=RequestMethod.GET)
	public String deleteGig(@RequestParam int id, RedirectAttributes redirect) {
		gigsService.deleteGig(id);
		//System.out.println("Gig was deleted");
		redirect.addFlashAttribute("message","Gig was deleted");
		System.out.println("Gig was deleted");
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/addgigs", method = RequestMethod.GET)
	public String showAddGigs(ModelMap model) {
		GigsModel gigsModel = new GigsModel();
		model.addAttribute("gigsModel", gigsModel);		
		model.addAttribute("countries", gigsService.listCountries());		
		model.addAttribute("states", gigsService.listStates());		
		System.out.println(gigsService.listCountries() + "Output the countries");
		      
		return "add-gigs-basic";

	}

	@RequestMapping(value = "/submitgigs", method = RequestMethod.POST)
	public String submitGigs(GigsModel gigsModel, BindingResult bindingResult, RedirectAttributes redirect) {
		
		if (bindingResult.hasErrors()) {
			redirect.addFlashAttribute("error", "An Error has Occurred");
			return "add-gigs-basic";
		} else {
			gigsService.addNewGigs(gigsModel);
			redirect.addFlashAttribute("success", "New Gig Added Succesfully");
			System.out.println("New Gig Succesfully Added");
			return "redirect:/addgigs";
			
		}

	}
	}
	
	

