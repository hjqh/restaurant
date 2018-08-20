package com.example.model;

public class Food {
	private int id;
	private String fname;
	private double price;
	private String imgpath;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public Food() {
		super();
	}
	@Override
	public String toString() {
		return "Food [id=" + id + ", fname=" + fname + ", price=" + price
				+ ", imgpath=" + imgpath + "]";
	}
	
	 @Override
	    public int hashCode() {
	        final int prime = 31;
	        int result = 1;
	        result = prime * result + id;
	        return result;
	    }

	    @Override
	    public boolean equals(Object obj) {
	        if (this == obj)
	            return true;
	        if (obj == null)
	            return false;
	        if (getClass() != obj.getClass())
	            return false;
	        Food other = (Food) obj;
	        if (id == 0) {
	            if (other.id != 0)
	                return false;
	        } else if (id!=other.id)
	            return false;
	        return true;
	    }
	    
	    

	
}

