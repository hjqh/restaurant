package com.example.mapper;

import java.sql.Date;
import java.util.List;

import com.example.model.Seat;

public interface SeatMapper {
	public List<Seat> findAll();
	
	/**
	 * ��ѯ��Ԥ������λ
	 */
	public List findSeat(Date orderday,String ordertime,String tabletype);
}
