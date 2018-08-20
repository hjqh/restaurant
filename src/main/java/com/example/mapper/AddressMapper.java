package com.example.mapper;

import java.util.List;

import com.example.model.Address;

public interface AddressMapper {
	
	/**
	 * 查询用户个人地址
	 * @param id
	 * @return
	 */
	public List<Address> selectByUser_id(Integer id);
	
	/**
	 * 插入用户新地址
	 * @return
	 */
	public int addAddress(int uid,String detail);
	
	/**
	 * 删除地址
	 * @param uid
	 * @param aid
	 * @return
	 */
	public int delAddress(int aid);
	
}
