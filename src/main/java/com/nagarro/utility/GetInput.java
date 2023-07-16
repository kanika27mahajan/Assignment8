package com.nagarro.utility;

import java.util.Scanner;

public class GetInput {
	
	private static String tcolor;
	private static String tsize;
	private static String tgender;
	private static String outputPref;
	
	
	public static void takeInputFromUser() {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the search filter details -->");
		System.out.print("Enter the color :  ");
		tcolor=sc.nextLine();
		System.out.println();
		System.out.print("Enter the size :  ");
		tsize=sc.nextLine();
		System.out.println();
		System.out.print("Enter your gender:  ");
		tgender=sc.nextLine();
		System.out.println();
		System.out.print("Enter output preference (price/rating/both)");
		outputPref=sc.nextLine();
		
		sc.close();
	
	}


	public static String getTcolor() {
		return tcolor;
	}


	public static String getTsize() {
		return tsize;
	}


	public static String getTgender() {
		return tgender;
	}


	public static String getOutputPref() {
		return outputPref;
	}
}
