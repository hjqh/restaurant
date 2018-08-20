package com.example.model;

import java.util.Date;
import java.util.List;



public class Out_food {
	private int id;
	private int user_id;
	private int ads_id;
	private Date order_time;	
	private String state;
	private String remark;
	private User user;
	private Address address;
	private Food food;
	private double total;
	private List<Out_term> out_term;
	private String nums;
	public String getNums() {
		return nums;
	}
	public void setNums(String nums) {
		this.nums = nums;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public Food getFood() {
		return food;
	}
	public void setFood(Food food) {
		this.food = food;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public List<Out_term> getOut_term() {
		return out_term;
	}
	public void setOut_term(List<Out_term> out_term) {
		this.out_term = out_term;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getAds_id() {
		return ads_id;
	}
	public void setAds_id(int ads_id) {
		this.ads_id = ads_id;
	}
	public Date getOrder_time() {
		return  order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Out_food() {
		super();
	}
	@Override
	public String toString() {
		return "Out_food [id=" + id + ", user_id=" + user_id + ", ads_id="
				+ ads_id + ", order_time=" + order_time + ", state=" + state
				+ ", remark=" + remark + ", user=" + user + ", address="
				+ address + ", food=" + food + ", total=" + total
				+ ", out_term=" + out_term + "]";
	}
	
}
