package com.example.controller;




import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.mapper.Order_seat_Mapper;
import com.example.mapper.SeatMapper;
import com.example.model.Order_seat;
import com.example.model.User;

@Controller
public class Order_seat_Controller {
	@Autowired
	Order_seat_Mapper orderseat_Mapper;
	
	/**
	 * 连表查询，查询所有预定座位信息,包括用户名字，电话，还有所预定座位表座位
	 * @return
	 */
	@GetMapping("/all_order_seat1")
	public String showAll_order_seat(Model model){
		model.addAttribute("find_all_seat",orderseat_Mapper.findAll());
		return "all_order_seat";
		
	} 
	
	/**
	 * 查询个人订单
	 * @return
	 */
	@GetMapping("/user_seat1")
	public String showUserSeat(Model model,HttpServletRequest request){
		User user=(User) request.getSession().getAttribute("user");
		model.addAttribute("user_seat",orderseat_Mapper.findbyId(user.getId()));
		return "user_seat";
		
	}
	
	
	/**
	 * 预定座位
	 * @param orderday
	 * @param ordertime
	 * @param tabletype
	 * @param remark
	 */
	@PostMapping(value="/doOrder")
	public String doOrder(@RequestParam Date orderday,@RequestParam String ordertime,
						@RequestParam String tabletype,@RequestParam String remark,
						@RequestParam int seat_id,Model model,HttpServletRequest request){
		User user=(User) request.getSession().getAttribute("user");
		java.util.Date dq = new java.util.Date();
		//System.out.println(dq);
		//System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
		//df.format(dq);
		long intervalMilli = orderday.getTime() - dq.getTime();
		if(user==null){
			return "redirect:/login1";
		}else if(intervalMilli / (24 * 60 * 60 * 1000)<1){
			return "redirect:/index1?tip=0";
		}else{
			//System.out.println(orderday+ordertime+remark+tabletype);
			orderseat_Mapper.inputOrder(orderday,ordertime,seat_id,remark,user.getId());
			//System.out.println(i);
			return "redirect:/index1?tip=1";
		}
		
	}
	
	
	
	
	/**
	 * 用户取消订单
	 * @param oid
	 * @return
	 */
	@GetMapping("/doChange")
	public String changeOrder(@RequestParam int oid,@RequestParam String state,@RequestParam Date date){
		//SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		//java.sql.Date dq=new java.sql.Date();
		java.util.Date dq = new java.util.Date();
		//System.out.println(dq);
		//System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
		//df.format(dq);
		long intervalMilli = date.getTime() - dq.getTime();
	    //return (int) (intervalMilli / (24 * 60 * 60 * 1000));
		//System.out.println(intervalMilli / (24 * 60 * 60 * 1000));
		if(intervalMilli / (24 * 60 * 60 * 1000)<1){
			return "redirect:/user_seat1?changetip=2";
		}else if("已预订".equals(state)){
			orderseat_Mapper.changeOrder(oid);
			return "redirect:/user_seat1?changetip=1";
			
		}else{
			return "redirect:/user_seat1?changetip=0";
		}
		
	}
	
	
}
