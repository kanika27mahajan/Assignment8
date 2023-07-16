package com.nagarro.utility;

import java.util.Comparator;

import com.nagarro.entity.Tshirt;

public class Sorter implements Comparator<Tshirt>{
	private String prefer;
	public Sorter(String p){
		this.prefer=p;
	}
	public int compare(Tshirt t1, Tshirt t2) {
		if(prefer.equals("rating")) {
			if(t2.getRating()>t1.getRating()) {
				return 1;
			}
			else if(t2.getRating()==t1.getRating()) {
				return 0;
			}
			else return -1;
		}
		else if(prefer.equals("price")) {
			return (int)(t2.getPrice() - t1.getPrice());
		}
		else if(prefer.equals("both")) {
			if(t1.getPrice() != t2.getPrice()) {
				return (int)(t2.getPrice()-t1.getPrice());
			}
			else {
				if(t2.getRating()>t1.getRating()) {
					return 1;
				}
				else if(t2.getRating()==t1.getRating()) {
					return 0;
				}
				else return -1;
			}
		}
		return 0;
	}



}
