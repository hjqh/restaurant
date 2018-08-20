package com.example.mapper;

import java.sql.Date;
import java.util.List;

import com.example.model.Seat;

public interface SeatMapper {
	public List<Seat> findAll();
	
	/**
	 * 查询可预定的座位
	 */
	public List findSeat(Date orderday,String ordertime,String tabletype);
}
