package it.objectmethod.db.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.objectmethod.db.dao.CountryDao;
import it.objectmethod.db.models.Country;

@Controller
public class CountryController {

	@Autowired
	private CountryDao countryDao;
	
	@GetMapping("/country")
	public String country(@RequestParam("name") String name, @RequestParam("continent") String continent, ModelMap map){
		List<Country> list = new ArrayList<>();
		String error = "Try again";
		
		if(name == null || continent == null) {
			map.addAttribute("noCountry", error);
		}else if(name.isBlank() && continent.isBlank()) {
			map.addAttribute("noCountry", error);
		}else {
			try {
				list = countryDao.getCountryByContinentName(name, continent);
				if(list.isEmpty()) {
					map.addAttribute("noCountry", error);
				}
				else {
					map.addAttribute("countryList", list);
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		return "country";
	}
	
	@GetMapping("/countryPage")
	public String goToCountryPage(){
		return "country";
	}
	
	@GetMapping("/countryByContinent")
	public String countryBycontinent(@RequestParam("continentName") String continent, ModelMap map) {
		List<Country> countryList = new ArrayList<>();
		try {
			countryList = countryDao.getCountryByContinentList(continent);
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		map.addAttribute("countryList", countryList);
		return "countryByContinent";
	}
}
