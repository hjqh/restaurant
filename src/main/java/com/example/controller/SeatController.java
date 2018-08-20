package com.example.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.mapper.Order_seat_Mapper;
import com.example.mapper.SeatMapper;
import com.example.model.Order_seat;
import com.example.model.Seat;


@Controller
public class SeatController {
	@Autowired
	SeatMapper seatMapper;
	
	/**
	 * 查询所有座位
	 * @return
	 */
	@GetMapping(value="/seats", produces="application/json")
	@ResponseBody
	public List<Seat> findAll(){
		return seatMapper.findAll();
		
	}
	
	

	
	/**
	 * 查找剩余可预定座位
	 * @param od
	 * @param ot
	 * @param tt
	 * @param model
	 * @return
	 */
	@RequestMapping("/doFindSeatId")
	@ResponseBody
	public Map<String,Object> dotest(@RequestParam Date od,@RequestParam String ot,@RequestParam String tt,Model model) {		
		System.out.println(od);
		System.out.println(ot);
		System.out.println(tt);
		Map<String,Object> map = new HashMap<String,Object>(); 
		List seatList=seatMapper.findSeat(od,ot,tt);
		model.addAttribute("s_id",seatList);
		System.out.println(seatList);
		String result="aasd";
		map.put("name",seatList); 
	    return map; 
		
	}
	
	
	
	

}
