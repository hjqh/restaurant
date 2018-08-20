package com.example.mapper;

import java.util.List;

import com.example.model.Address;

public interface AddressMapper {
	
	/**
	 * ��ѯ�û����˵�ַ
	 * @param id
	 * @return
	 */
	public List<Address> selectByUser_id(Integer id);
	
	/**
	 * �����û��µ�ַ
	 * @return
	 */
	public int addAddress(int uid,String detail);
	
	/**
	 * ɾ����ַ
	 * @param uid
	 * @param aid
	 * @return
	 */
	public int delAddress(int aid);
	
}
