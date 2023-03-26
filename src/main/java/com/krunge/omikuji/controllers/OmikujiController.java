package com.krunge.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	@RequestMapping("/omikuji")
		public String index(){
		return "index.jsp";
	}
		
	@RequestMapping("/omikuji/submit")
		public String pShow(HttpSession session,
		@RequestParam(value="pickNumber") String pickNumber,
		@RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="livingThing") String livingThing,
		@RequestParam(value="message") String message) {
		
		session.setAttribute("pickNumber", pickNumber);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("message", message);
		
		return "redirect:/omikuji/show";
	}
	@RequestMapping("/omikuji/show")
		public String rShow() {
		return "show.jsp";
	}
}
