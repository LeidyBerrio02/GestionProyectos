package com.semillerojava.demoversion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

	@GetMapping("/login")
	public String index() {
		return "login";
	}
	
	@GetMapping("/menu")
	public String menu() {
		return "menu";
	}
	
	@GetMapping("/403")
	public String error403() {
		return "Errores/403";
	}
	
	@GetMapping("/404")
	public String error404() {
		return "Errores/404";
	}
	
	
	
}