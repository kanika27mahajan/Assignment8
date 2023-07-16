package com.nagarro.utility;

import java.io.File;

public class FilePathReader {
	public static String getFilePath() {
		String dirPath= "C:\\Users\\kanikamahajan01\\eclipse-workspace2\\Assignment8\\src\\main\\resources\\csvFiles";
		System.out.println(dirPath);
		return dirPath;
	}
	
	public static void main(String[] args) {
		File file=new File("");
		System.out.println(file.getAbsolutePath());
	}

}
