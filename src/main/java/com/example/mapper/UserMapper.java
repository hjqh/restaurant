package com.example.mapper;

import java.util.List;

import com.example.model.User;

public interface UserMapper {
	/**
	 * ��ѯ�û�������Ϣ
	 * @param uid
	 */
	public User showImf(int uid);
	
	/**
	 * �޸��û�������Ϣ
	 * @param uid
	 */
	public int changImf(String name,int phone,String sex,int id_number,int uid);
	
	
	public User findUser(String Username,String Password);
	public User findUser1(String Username); //ע����û���
	public int addUser(String Username,String Password,String Name,String Phone,String Sex,String Id_number);//ע������û�

	
	public int changPwd(String password,int uid);//����id����pwd�޸�����
	public User checkPwd(String password,int uid);//����id����pwdȷ���Ǳ���

}
