package com.example.model;

import java.util.Date;

public class Out_term {
	private int id;
	private int order_id;
	private int food_id;
	private int num;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public Out_term() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	@Override
	public String toString() {
		return "Out_term [id=" + id + ", order_id=" + order_id + ", food_id="
				+ food_id + ", num=" + num + "]";
	}

}
