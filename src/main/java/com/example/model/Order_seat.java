package com.example.model;

import java.sql.Date;
import java.util.List;

public class Order_seat {
	private int id;
	private int user_id;
	private Date orderday;
	private String ordertime;
	private String state;
	private String remark;
	private User user;
	private Seat seat;
	private int seat_id;
	public int getSeat_id() {
		return seat_id;
	}
	public void setSeat_id(int seat_id) {
		this.seat_id = seat_id;
	}
	public Seat getSeat() {
		return seat;
	}
	public void setSeat(Seat seat) {
		this.seat = seat;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	public Date getOrderday() {
		return orderday;
	}
	public void setOrderday(Date orderday) {
		this.orderday = orderday;
	}
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Order_seat() {
		super();
	}
	@Override
	public String toString() {
		return "Order_seat [id=" + id + ", user_id=" + user_id + ", orderday="
				+ orderday + ", ordertime=" + ordertime + ", state=" + state
				+ ", remark=" + remark + ", user=" + user + ", seat=" + seat
				+ "]";
	}
	
}
