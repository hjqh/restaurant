package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.mapper.FoodMapper;

@Controller
public class FoodController {

	@Autowired
	FoodMapper foodMapper;
	
	@GetMapping("/all_food1")
	public String showAll_food(Model model){
		model.addAttribute("findfood",foodMapper.findAll());
		return "all_food";
	}
	
	
	@GetMapping("/takefood1")
	public String showAll_food2(Model model){
		model.addAttribute("findfood",foodMapper.findAll());
		return "takefood";
	}
	
	
	@GetMapping("/food_add1")
	public String showFood_add(){
		return "food_add";
		
	}
	
	@GetMapping("/edit_food1")
	public String showEdit_add(){
		return "edit_food";
		
	}
	
	
	
	
	
	
	
	/**
	 * ��Ӳ�Ʒ
	 * @param file
	 * @param food_name
	 * @param foodprice
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@PostMapping(value="/doFoodAdd")
	public String upload(@RequestParam("file") MultipartFile file,
			@RequestParam("food_name") String food_name,
			@RequestParam("foodprice") Double foodprice,
			HttpServletRequest request) throws IOException {
//		
		String imagenames = null;
		
//		for(MultipartFile file : myfiles){   
			//System.out.println("3");
			//�˴�MultipartFile[]�����Ƕ��ļ�,����ǵ��ļ�MultipartFile������
            if(file.isEmpty()){ 
            	System.out.println("�ļ�δ�ϴ�!");
            }
            else{
            	
            	//�õ��ϴ����ļ���
				String fileName = file.getOriginalFilename();
				
				//�õ���������Ŀ�����������ڵ�ַ
				String path1 = request.getSession().getServletContext().getRealPath("/WEB-INF/food")+File.separator;
				//  �˴�δʹ��UUID������Ψһ��ʶ,��������Ϊ��ʶ
				
				String filenewname = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())+ fileName;
				
				String path = path1+ filenewname;
				
				//�鿴�ļ��ϴ�·��,�������
				System.out.println(path);
				
				//���ļ��ϴ���path��·��
				File localFile = new File(path);
				
				file.transferTo(localFile);
				
				imagenames=filenewname;
				
				}
//			}
            
		//System.out.println("d");
		//request.setAttribute("images", imagenames);
		//System.out.println("e");
		foodMapper.insertFood(food_name, foodprice,imagenames);
		return "redirect:/food_add1?addtip=1";
	}
	
	
	/**
	 * ɾ����Ʒ
	 * @param id
	 * @return
	 */
	@GetMapping("/doFoodDel")
	public String doFoodDel(@RequestParam int id){
		foodMapper.deleteFood(id);
		return "redirect:/all_food1?deltip=1";
		
	}
	
	@GetMapping("/dofindFoodById")
	public String dofindFoodById(@RequestParam int id,Model model) {
		model.addAttribute("foodbyId", foodMapper.findById(id)) ;
		return "edit_food";
	}
	
	@PostMapping("/doFoodUpdate")
	public String doFoodUpdate(@RequestParam int id,@RequestParam String fname,@RequestParam double price) {
		foodMapper.updateFood(fname, price, id);
		return "redirect:/all_food1?edittip=1";
	}
}
