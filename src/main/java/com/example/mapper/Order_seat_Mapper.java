package com.example.mapper;

import java.util.Date;

import java.util.List;




import com.example.model.Order_seat;


public interface Order_seat_Mapper {
	/**
	 * 连表查询，查询所有预定座位信息,包括用户名字，电话，还有所预定座位表座位
	 * @return
	 */
	public List<Order_seat> findAll();
	
	/**
	 * 查询个人订单
	 * @return
	 */
	public List<Order_seat> findbyId(int uid);
	
	
	
	/**
	 * 提交预定座位信息,插入预定座位表
	 */
	public int inputOrder(Date orderday,String ordertime,int seat_id,String remark,int id);
	
	
	/**
	 * 取消订单
	 * @return
	 */
	public int changeOrder(int oid);
	
}
