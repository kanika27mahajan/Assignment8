package com.nagarro.utility;

import java.io.File;
import java.io.FileReader;
import java.io.Reader;
import java.util.ArrayList;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVRecord;

import com.nagarro.entity.Tshirt;

public class ReadFromCsv {
	
static int totalFilesParsed;
	
	// This will return the arrayList of all available tshirts;
	public static ArrayList<Tshirt> parseCSVFiles() {
		ArrayList<Tshirt> alltshirts=new ArrayList<Tshirt>();
		try {
			File dirPath= new File(FilePathReader.getFilePath());
			File csvFiles[]=dirPath.listFiles(); 
			
			if(csvFiles != null) {
				for(File eachFile:csvFiles) {
					Reader tempReader= new FileReader(eachFile.getAbsoluteFile());
					Iterable<CSVRecord> TshirtRecord= CSVFormat.DEFAULT.withFirstRecordAsHeader().parse(tempReader);
					
					for(CSVRecord record: TshirtRecord) {
							alltshirts.add(new Tshirt(record.get(0),record.get(1),record.get(2),record.get(3),
									record.get(4),record.get(5),record.get(6),record.get(7)));

					}
				}
			}
			totalFilesParsed=csvFiles.length;
			
			return alltshirts;
			
		}
		catch(Exception e) {
			System.out.println("Some error occured while processing the csv files "+ e);
			
		}
		return alltshirts;
	}

}
