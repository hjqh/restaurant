package com.example.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.mapper.FoodMapper;
import com.example.mapper.Out_food_Mapper;
import com.example.model.Food;
import com.example.model.Out_food;
import com.example.model.User;

@Controller
public class Out_food_Controller {
	@Autowired
	Out_food_Mapper outfood_Mapper;
	@Autowired
	FoodMapper foodMapper;

	/**
	 * �����ѯ����ѯ����������Ϣ,�����û���Ϣ����������������Ϣ����ַ��Ϣ
	 * 
	 * @return
	 */
	@GetMapping(value = "/all_out_food1")
	public String findAllgoods(Model model) {
		model.addAttribute("find_out_food", outfood_Mapper.findAll());
		return "all_out_food";
	}

	/**
	 * ��ѯδ������
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping(value = "/out_deal1")
	public String findbyState(Model model) {
		model.addAttribute("deal_out_food", outfood_Mapper.findbyState());
		return "out_deal";
	}

	/**
	 * �����û���ѯ�Լ����˶���
	 * 
	 * @param uid
	 * @param model
	 * @return
	 */
	@GetMapping(value = "/user_food1")
	public String findbyId(Model model,HttpServletRequest request) {
		User user=(User) request.getSession().getAttribute("user");
		//System.out.println(user);
		model.addAttribute("user_food", outfood_Mapper.findbyId(user.getId()));
		return "user_food";
	}

	/**
	 * ��̨���ܶ���
	 * 
	 * @param id
	 * @return
	 */
	@GetMapping(value = "/insure")
	public String insure(@RequestParam("id") Integer id) {
		outfood_Mapper.insure(id);
		return "redirect:/out_deal1";
	}

	/**
	 * ��Ӳ�Ʒ�����ﳵ
	 * 
	 * @param id
	 * @return
	 */
	@GetMapping(value = "/addFoodtoCart")
	public String addFoodtoCart(@RequestParam("id") Integer id, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println(id);
		Food food = new Food();
		food = foodMapper.findById(id);

		// 3.����Ʒ��ӵ����ﳵ
		// 3.1 ��session�л�ȡ���ﳵ
		Map<Food, Integer> cart = (Map<Food, Integer>) request.getSession().getAttribute("cart");
		int count = 1; // Ĭ��������1
		if (cart == null) { // �����һ�ι����û�й��ﳵ
			cart = new HashMap<Food, Integer>();
		} else {
			// �й��ﳵ����Ҫ�����ڹ��ﳵ���������Ʒ
			Integer c = cart.get(food);
			if (c != null) { // ˵�����ﳵ���������Ʒ��
				count = c + 1;
			}
		}
		cart.put(food, count); // ����Ʒ��ӵ��˹��ﳵ.

		// 4.�����ﳵ�洢��session�С�
		request.getSession().setAttribute("cart", cart);

		return "redirect:/takefood1";

	}
	
	@GetMapping(value="/changeCartCount")
	public String changeCartcount(@RequestParam("id") Integer id,@RequestParam("count") Integer count,HttpServletRequest request) {
		Map<Food, Integer> cart = (Map<Food, Integer>) request.getSession().getAttribute("cart");
		Food food=new Food();
		food.setId(id);
		
		if(count==0) {
		//����Ϊ0���cart��ɾ��
			cart.remove(food);
		}
		else {
			cart.put(food, count);
		}
		return "redirect:/cart1";
		
	}

	
	
	/**
	 * �ύ��������
	 * @return
	 */
	@GetMapping("doInsertOut")
	public String insertOut(@RequestParam String remark,@RequestParam Integer ads_id, 
 HttpServletRequest request) {
		Map<Food,Integer> cart=(Map<Food,Integer>)request.getSession().getAttribute("cart");
		
		Out_food out_food=new Out_food();
		User user=(User)request.getSession().getAttribute("user");
		System.out.println(user.getId());
		out_food.setUser_id(user.getId());
		//��ȡ��ַid
		//Integer ads_id=1;
		out_food.setAds_id(ads_id);
		out_food.setOrder_time(new Date());
		out_food.setState("δ�ӵ�");
		//��ȡ��ע��Ϣ
		//String remark="������";
		out_food.setRemark(remark);
		//��ȡ�ܼ�
		Double total=0.0;
	    for (Food food : cart.keySet()) {
	    	total=food.getPrice()*cart.get(food)+total;
	    	System.out.println("�˵ĵ���"+food.getPrice()+"�µ�����"+cart.get(food));

	     }
	    System.out.println(total);
		out_food.setTotal(total);
		
		outfood_Mapper.insertOut(out_food); //���붩����
		
		int newId =outfood_Mapper.findNewId(); //��ȡ�¶���id
		
		for(Food food:cart.keySet()) {
			outfood_Mapper.insertTerm(newId,food.getId(),cart.get(food));
			System.out.println("�˵�id"+food.getId()+"�˵�����"+cart.get(food));
		}
		
		return "redirect:/takefood1?antip=1";
		
		
	}
	
	
	/**
	 * �û�ȡ������
	 * @param oid
	 * @return
	 * @throws ParseException 
	 */
	@GetMapping("/doChangeOut")
	public String changeOrder(@RequestParam int oid,@RequestParam String state,@RequestParam String date) throws ParseException{
		Date dq = new Date();
		//System.out.println(dq);
		SimpleDateFormat sdf = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", java.util.Locale.US);
		Date date1 = sdf.parse(date.toString());
		//System.out.println(date1); 
		long intervalMilli = dq.getTime() - date1.getTime();
		//System.out.println((int)intervalMilli /(60*1000));
//	    //return (int) (intervalMilli / (24 * 60 * 60 * 1000));
		if("ȡ��".equals(state)||"�����".equals(state)){
			return "redirect:/user_food1?changetip=3";
		}
		else if(intervalMilli / (60 * 1000)<5){
			outfood_Mapper.cancelOut(oid);
			return "redirect:/user_food1?changetip=1";
		}else{
			return "redirect:/user_food1?changetip=0";
		}
		
	}
	
	
	
}
