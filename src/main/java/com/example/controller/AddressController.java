package com.example.controller;

import io.lettuce.core.RedisFuture;
import io.lettuce.core.api.async.RedisAsyncCommands;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.lettuce.RedisCli;
import com.example.mapper.AddressMapper;
import com.example.model.Address;
import com.example.model.User;

@Controller
public class AddressController {
	@Autowired
	AddressMapper addressMapper;
	
	
	/**
	 * ��ѯ�û����˵�ַ
	 * @param id
	 * @return
	 */
	@GetMapping("/address_add1")
	public String showAddress(Model model,HttpServletRequest request){
		User user=(User) request.getSession().getAttribute("user");
		List<Address> list=new ArrayList<Address>();
		try {
			list=readFromRedis();
			if(list.size()==0){
				list=addressMapper.selectByUser_id(user.getId());
				System.out.print("------------read from database----------------");
				writeToRedis(list);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("userAddress",list);
		return "address_add";
		
	}
	
	/**
	 * �����û��µ�ַ
	 * @return
	 */
	@PostMapping("/doAddress")
	public String addAddress(@RequestParam String street,@RequestParam String detail,HttpServletRequest request){
		User user=(User) request.getSession().getAttribute("user");
		addressMapper.addAddress(user.getId(),street+detail);
		return "redirect:/address_add1";
		
	}
	
	
	@GetMapping("/doAddressDel")
	public String delAddress(@RequestParam int aid){
		//System.out.println(aid);
		addressMapper.delAddress(aid);
		return "redirect:/address_add1?deltip=1";
		
	}
	
	
	@GetMapping(value="/findAddress",produces="application/json;charset=UTF-8")
	public @ResponseBody List<Address> findAddress(Model model,HttpServletRequest request){
		User user=(User) request.getSession().getAttribute("user");
		List<Address> list=new ArrayList<Address>();
		try {
			list=readFromRedis();
			if(list.size()==0){
				list=addressMapper.selectByUser_id(user.getId());
				System.out.print("------------read from database----------------");
				writeToRedis(list);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//System.out.println("��ַ������"+list.size());
		return list;
	}

	//客户端的代码
	private List<Address> readFromRedis() throws Exception {
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
	
		final List<Address> addresses = new ArrayList();
		RedisFuture<List<String>> futureKeys = asyncCommands.keys("address*");
		
		List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
		
		if(keys.size()==0) return addresses;
		
		for(String key: keys){
			RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
			Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
			Address address = new Address(); 
			address.setId(Integer.valueOf(map.get("id")));
			address.setUser_id(Integer.valueOf(map.get("user_id")));
			address.setDetail(map.get("detail"));
			addresses.add(address);
		}
		System.out.println("---------------read from redis------------------");
		return addresses;
	}

	private void writeToRedis(List<Address> address) {
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
		for(Address add: address){
			Map<String, String> map = new HashMap();
			map.put("id", String.valueOf(add.getId()));
			map.put("user_id", String.valueOf(add.getUser_id()));
			map.put("detail", add.getDetail());
			asyncCommands.hmset("address:"+add.getId(), map);
			System.out.println("---------------write to redis------------------");
			
		}
		
		
	}
	
}
