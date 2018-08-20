package com.example.mapper;

import java.util.List;

import com.example.model.Out_food;

public interface Out_food_Mapper {
	/**
	 * �����ѯ����ѯ����������Ϣ,�����û���Ϣ����������������Ϣ����ַ��Ϣ
	 * @return
	 */
	public List<Out_food> findAll();
	
	
	/**
	 * ��ѯδ�������������
	 * @return
	 */
	public List<Out_food> findbyState();
	
	/**
	 * �����û���ѯ�Լ����˶���
	 * @return
	 */
	public List<Out_food> findbyId(int uid);
	
	/**
	 * ����Աȷ�Ͻӵ�
	 * @param id
	 */
	public void insure(Integer id);
	
	/**
	 * �ύ���������������out_food
	 * @return
	 */
	public int insertOut(Out_food out_food);
	
	/**
	 * �鿴���¶���id
	 * @return
	 */
	public int findNewId();
	
	/**
	 * �ύ���������������out_term
	 * @return
	 */
	public int insertTerm(int oid,int fid,int num);
	
	/**
	 * �û�ȡ������
	 * @param oid
	 * @return
	 */
	public int cancelOut(int oid);
	
}
