package com.example.mapper;

import java.util.List;

import com.example.model.Food;

public interface FoodMapper {
	/**
	 * 查询所有菜品
	 * @return
	 */
	public List<Food> findAll();
	
	/**
	 * 通过id查菜品
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
	 * 删除菜品
	 * @param fid
	 * @return
	 */
	public int deleteFood(int fid);
	
	/**
	 * 修改菜品
	 * @param fid
	 * @return
	 */
	public int updateFood(String fname,double price, int fid);
	
}
