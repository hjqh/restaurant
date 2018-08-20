package com.example.model;

public class Seat {
	private int id;
	private String tabletype;
	private double price;
	private Order_seat order_seat;
	
	public Order_seat getOrder_seat() {
		return order_seat;
	}
	public void setOrder_seat(Order_seat order_seat) {
		this.order_seat = order_seat;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTabletype() {
		return tabletype;
	}
	public void setTabletype(String tabletype) {
		this.tabletype = tabletype;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public Seat() {
		super();
	}
	@Override
	public String toString() {
		return "Seat [id=" + id + ", tabletype=" + tabletype + ", price="
				+ price + "]";
	}
	
}
