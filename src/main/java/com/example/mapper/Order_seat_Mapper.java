package com.example.mapper;

import java.util.Date;

import java.util.List;




import com.example.model.Order_seat;


public interface Order_seat_Mapper {
	/**
	 * �����ѯ����ѯ����Ԥ����λ��Ϣ,�����û����֣��绰��������Ԥ����λ����λ
	 * @return
	 */
	public List<Order_seat> findAll();
	
	/**
	 * ��ѯ���˶���
	 * @return
	 */
	public List<Order_seat> findbyId(int uid);
	
	
	
	/**
	 * �ύԤ����λ��Ϣ,����Ԥ����λ��
	 */
	public int inputOrder(Date orderday,String ordertime,int seat_id,String remark,int id);
	
	
	/**
	 * ȡ������
	 * @return
	 */
	public int changeOrder(int oid);
	
}
