package com.nagarro.utility;

import java.io.File;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.nagarro.dao.TshirtDao;
import com.nagarro.entity.Tshirt;

@Component
public class FileChangeThread extends Thread{

	@Autowired
	TshirtDao tdao;

	public void run() {
		try {
			while (true) {
				File dirPath= new File(FilePathReader.getFilePath());
				int filetemp=dirPath.listFiles().length;
				System.out.println("Thread Started");
				if(filetemp!=ReadFromCsv.totalFilesParsed) {
					ReadFromCsv.totalFilesParsed=filetemp;
					ArrayList<Tshirt> temp=ReadFromCsv.parseCSVFiles();
					for(Tshirt t:temp) {
						tdao.save(t);
					}
				}

				Thread.sleep(8000);
			}
			
		}

		catch (Exception e) {

		}
	}

}
