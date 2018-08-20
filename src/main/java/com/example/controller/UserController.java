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
	 * ��ѯ�û���Ϣ
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
	 * �޸��û�������Ϣ
	 * @return
	 */
	@PostMapping("/doUserImf")
	public String doChangeImf(@ModelAttribute User user2,HttpServletRequest request){
		User user1=(User) request.getSession().getAttribute("user");
		userMapper.changImf(user2.getName(),user2.getPhone(),user2.getSex(),user2.getId_number(),user1.getId());
		return "redirect:/user_imf1?tip=1";
	}
	
	/**
	 * �ı��û�����
	 * @return
	 */
	@GetMapping("/user_pwd1")
	public String changPwd(){
		return "user_pwd";
		
	}
	
	
	
	@GetMapping("/login1")  //��¼ҳ��
	public String login(){
		return "userlogin";
		
	}
	
	 @RequestMapping(value = "/dologin" ) // ��¼��
	   public String  findUser( @RequestParam String Username,@RequestParam String Password,@RequestParam String usertype,Model model,HttpSession httpSession)
	      { 	   
		 
		   if(usertype.equals("admin")){  //ѡ�����Ա��¼
			   Manager manager=managerMapper.findManager(Username, Password);
			   if(manager!=null){
				   httpSession.setAttribute("manager", manager); 
				   return "redirect:/out_deal1";
		    	 }
			   model.addAttribute("flag1","��¼ʧ��");
			   return "";
			}
		   if(usertype.equals("user")){//ѡ���û���¼
			   User user=userMapper.findUser(Username,Password);
			   if(user!=null){
				   httpSession.setAttribute("user", user);
				   return "index";
		    	 }
			   model.addAttribute("flag1","��¼ʧ��");
			   return "userlogin";
			}
	   return "";
	      }
	 
	 
	
	 @RequestMapping(value = "/doreg" )  //ע���
	   public String findUser1(@RequestParam String Username,@RequestParam String Password,@RequestParam String Name,@RequestParam String Phone,@RequestParam String Sex,@RequestParam String IdNumber,Model model)
	      { 
	      int i=0;
	      try{
	    	   i=userMapper.addUser(Username,Password,Name,Sex,Phone,IdNumber);
	      }
	      catch(Exception e){
	    	  model.addAttribute("flag1","ע��ʧ��");
	    	  return "userlogin";
	      }
		 

		 if(i==1)
		 {
			 System.out.println("ע��ɹ�");
			 model.addAttribute("flag1","ע��ɹ�");
			 return "userlogin";
		 }
		return "";

	      }
	 
	 @RequestMapping(value = "ajax" )  //��֤ע���û���
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
	 
	 @RequestMapping(value="/user_pwd2")  //�޸������
		public String changPwd1(@RequestParam String pwd,@RequestParam String pwd1,HttpSession httpsession,Model model,
				HttpServletRequest request){

		    
			User loginuser=(User) request.getSession().getAttribute("user");
					
					
			User user=userMapper.checkPwd(pwd,loginuser.getId());//�ж�ԭ�����Ƿ���ȷ
			int i=0;//�ж��Ƿ��޸�����ɹ�

			if(user!=null){
				 i=userMapper.changPwd(pwd1, loginuser.getId());
				 try{
					 if(i==1){
						 //System.out.println("�޸ĳɹ�");
						 model.addAttribute("tip", "succ");
						 return "redirect:/user_pwd1?tip=true"; //�����޸ĳɹ�
					 }
				 }
				 catch(Exception e){	
					 return "redirect:/user_pwd1?tip=false";//�����޸�ʧ��
				 }
				 
			}
			return "redirect:/user_pwd1?tip=false";//�����޸�ʧ��
			
		}
}
