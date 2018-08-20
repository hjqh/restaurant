package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.mapper.ManagerMapper;
import com.example.mapper.UserMapper;
import com.example.model.Manager;
import com.example.model.User;



@Controller
public class UserController {
	@Autowired
	UserMapper userMapper;
	@Autowired
	ManagerMapper managerMapper;
	
	/**
	 * 查询用户信息
	 * @param model
	 * @return
	 */
	@GetMapping("/user_imf1")
	public String showImfor(Model model,HttpServletRequest request){
		User user1=(User) request.getSession().getAttribute("user");
		model.addAttribute("userImf",userMapper.showImf(user1.getId()));
		return "user_imf";
	}
	
	/**
	 * 修改用户个人信息
	 * @return
	 */
	@PostMapping("/doUserImf")
	public String doChangeImf(@ModelAttribute User user2,HttpServletRequest request){
		User user1=(User) request.getSession().getAttribute("user");
		userMapper.changImf(user2.getName(),user2.getPhone(),user2.getSex(),user2.getId_number(),user1.getId());
		return "redirect:/user_imf1?tip=1";
	}
	
	/**
	 * 改变用户密码
	 * @return
	 */
	@GetMapping("/user_pwd1")
	public String changPwd(){
		return "user_pwd";
		
	}
	
	
	
	@GetMapping("/login1")  //登录页面
	public String login(){
		return "userlogin";
		
	}
	
	 @RequestMapping(value = "/dologin" ) // 登录表单
	   public String  findUser( @RequestParam String Username,@RequestParam String Password,@RequestParam String usertype,Model model,HttpSession httpSession)
	      { 	   
		 
		   if(usertype.equals("admin")){  //选择管理员登录
			   Manager manager=managerMapper.findManager(Username, Password);
			   if(manager!=null){
				   httpSession.setAttribute("manager", manager); 
				   return "redirect:/out_deal1";
		    	 }
			   model.addAttribute("flag1","登录失败");
			   return "";
			}
		   if(usertype.equals("user")){//选择用户登录
			   User user=userMapper.findUser(Username,Password);
			   if(user!=null){
				   httpSession.setAttribute("user", user);
				   return "index";
		    	 }
			   model.addAttribute("flag1","登录失败");
			   return "userlogin";
			}
	   return "";
	      }
	 
	 
	
	 @RequestMapping(value = "/doreg" )  //注册表单
	   public String findUser1(@RequestParam String Username,@RequestParam String Password,@RequestParam String Name,@RequestParam String Phone,@RequestParam String Sex,@RequestParam String IdNumber,Model model)
	      { 
	      int i=0;
	      try{
	    	   i=userMapper.addUser(Username,Password,Name,Sex,Phone,IdNumber);
	      }
	      catch(Exception e){
	    	  model.addAttribute("flag1","注册失败");
	    	  return "userlogin";
	      }
		 

		 if(i==1)
		 {
			 System.out.println("注册成功");
			 model.addAttribute("flag1","注册成功");
			 return "userlogin";
		 }
		return "";

	      }
	 
	 @RequestMapping(value = "ajax" )  //验证注册用户名
	 @ResponseBody
	 public String  checkUser(@RequestParam String username){
		 String tip="";
		 User user=userMapper.findUser1(username);
		  if(user!=null){
			  
			  tip="1";
		  }
		  else{
			
			  tip="2";
		  }

		 return tip;
	 }
	 
	 @RequestMapping(value="/user_pwd2")  //修改密码表单
		public String changPwd1(@RequestParam String pwd,@RequestParam String pwd1,HttpSession httpsession,Model model,
				HttpServletRequest request){

		    
			User loginuser=(User) request.getSession().getAttribute("user");
					
					
			User user=userMapper.checkPwd(pwd,loginuser.getId());//判断原密码是否正确
			int i=0;//判断是否修改密码成功

			if(user!=null){
				 i=userMapper.changPwd(pwd1, loginuser.getId());
				 try{
					 if(i==1){
						 //System.out.println("修改成功");
						 model.addAttribute("tip", "succ");
						 return "redirect:/user_pwd1?tip=true"; //返回修改成功
					 }
				 }
				 catch(Exception e){	
					 return "redirect:/user_pwd1?tip=false";//返回修改失败
				 }
				 
			}
			return "redirect:/user_pwd1?tip=false";//返回修改失败
			
		}
}
