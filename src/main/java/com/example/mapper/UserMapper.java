package com.example.mapper;

import java.util.List;

import com.example.model.User;

public interface UserMapper {
	/**
	 * 查询用户个人信息
	 * @param uid
	 */
	public User showImf(int uid);
	
	/**
	 * 修改用户个人信息
	 * @param uid
	 */
	public int changImf(String name,int phone,String sex,int id_number,int uid);
	
	
	public User findUser(String Username,String Password);
	public User findUser1(String Username); //注册查用户名
	public int addUser(String Username,String Password,String Name,String Phone,String Sex,String Id_number);//注册添加用户

	
	public int changPwd(String password,int uid);//根据id，新pwd修改密码
	public User checkPwd(String password,int uid);//根据id，旧pwd确认是本人

}
