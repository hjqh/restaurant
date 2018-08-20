package com.example.mapper;

import java.util.List;

import com.example.model.Food;

public interface FoodMapper {
	/**
	 * ��ѯ���в�Ʒ
	 * @return
	 */
	public List<Food> findAll();
	
	/**
	 * ͨ��id���Ʒ
	 * @param id
	 * @return
	 */
	public Food findById(Integer id);
	
	/**
	 * 
	 * @param fname
	 * @param price
	 * @param imgpath
	 * @return
	 */
	public int insertFood(String fname,Double price,String imgpath);
	 
	/**
	 * ɾ����Ʒ
	 * @param fid
	 * @return
	 */
	public int deleteFood(int fid);
	
	/**
	 * �޸Ĳ�Ʒ
	 * @param fid
	 * @return
	 */
	public int updateFood(String fname,double price, int fid);
	
}
