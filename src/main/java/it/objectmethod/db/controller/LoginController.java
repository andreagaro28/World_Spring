package it.objectmethod.db.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LoginController {


	@GetMapping("/home")
	public String home() {
		return "home";
	}

	@PostMapping("/login")
	public String login(@RequestParam("userName") String userName, HttpSession session, ModelMap map) {
		String landingPage = "city";
		if(userName == null || userName.isBlank()) {
			userName = "Insert your name";
			landingPage = "home";
			map.addAttribute("noName", userName);
		}else {
			session.setAttribute("userName", userName);
		}
		return landingPage;
	}


}
