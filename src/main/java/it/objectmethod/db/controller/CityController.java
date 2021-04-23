package it.objectmethod.db.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.objectmethod.db.dao.CityDao;
import it.objectmethod.db.models.City;

@Controller
public class CityController {
	@Autowired
	private CityDao cityDao;
	
	@GetMapping("/city")
	public String city(@RequestParam("cityName") String cityName, ModelMap map) throws SQLException {
		City city = null;
		String error = "NO CITY FOUND";

		if(cityName == null || cityName.isBlank()) {
			map.addAttribute("noCity", error);
		}else {
			city = cityDao.getCityByName(cityName);
			if(city == null) {
				map.addAttribute("noCity", error);
			}else {
				map.addAttribute("city", city);	
			}
		}
		return "city";
	}
	
	@GetMapping("/continents")
	public String continents(ModelMap map) throws SQLException {
		List<String> continentsList = cityDao.getContinents();
		map.addAttribute("continentsList" , continentsList);
		return "continents";
	}
	
	@GetMapping("/cityByCountry")
	public String cityByCountry(@RequestParam("countryCode") String countryCode, ModelMap map) {
		List<City> cityList = new ArrayList<>();		
		try {
			cityList = cityDao.getCityByCode(countryCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		map.addAttribute("cityList", cityList);
		return "cityByCountry";
	}
	
	@GetMapping("/cityPage")
	public String goToCityPage(){
		return "city";
	}
}
