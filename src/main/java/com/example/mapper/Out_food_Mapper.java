package com.example.mapper;

import java.util.List;

import com.example.model.Out_food;

public interface Out_food_Mapper {
	/**
	 * 连表查询，查询所有外卖信息,包括用户信息，还有所点外卖信息，地址信息
	 * @return
	 */
	public List<Out_food> findAll();
	
	
	/**
	 * 查询未处理的外卖订单
	 * @return
	 */
	public List<Out_food> findbyState();
	
	/**
	 * 用于用户查询自己个人订单
	 * @return
	 */
	public List<Out_food> findbyId(int uid);
	
	/**
	 * 管理员确认接单
	 * @param id
	 */
	public void insure(Integer id);
	
	/**
	 * 提交外卖订单，插入表out_food
	 * @return
	 */
	public int insertOut(Out_food out_food);
	
	/**
	 * 查看最新订单id
	 * @return
	 */
	public int findNewId();
	
	/**
	 * 提交外卖订单，插入表out_term
	 * @return
	 */
	public int insertTerm(int oid,int fid,int num);
	
	/**
	 * 用户取消订单
	 * @param oid
	 * @return
	 */
	public int cancelOut(int oid);
	
}
