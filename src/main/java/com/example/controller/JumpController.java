package com.example.controller;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.model.Food;




@Controller
public class JumpController {

	@GetMapping("/index1")
	public String showIndex(){
		System.out.print("asf");
		return "index";
		
	}
	

	@GetMapping("/cart1")
	public String showIndex2(){
		return "foodcart";
		
	}

	
}
