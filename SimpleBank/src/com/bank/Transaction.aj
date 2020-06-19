package com.bank;
import java.io.*;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.*;
import java.util.*; 
import java.util.Date; 

public aspect Transaction {
	
	pointcut success_transaction() : call(* *.money*());
    after() : success_transaction() {
    //Aspecto ejemplo: solo muestra este mensaje después de haber realizado una transacción
    	System.out.println("**** Transacción exitosa ****");
    	
    	//CODIGO PARA OBTENER LA HORA ACTUAL
		DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
        Date date = new Date();
        //CODIGO PARA OBTENER LA HORA ACTUAL
    	        
    	System.out.println("\nTipo de transaccion: "); //se debe concatenar con el tipo de transaccion
    	System.out.println("\nHora de transaccion: "+dateFormat.format(date)+"\n");
    	
        
        File archivo;
    	archivo = new File("Log.txt");
        
        if(!archivo.exists()){
        	try {
        		archivo.createNewFile();
        		PrintWriter pw = new PrintWriter("Log.txt");
        		System.out.println("\nARCHIVO NUEVO\n");
    			pw.println("\nTipo de transaccion: "+dateFormat.format(date)); //se debe concatenar con el tipo de transaccion
    			pw.close();
        	}catch(IOException ex) {	
        	}
        	
        }else {
        	
        }
        try {
    		PrintWriter pw = new PrintWriter("Log.txt");
			pw.println("\nTipo de transaccion: "+dateFormat.format(date)); //se debe concatenar con el tipo de transaccion
			pw.close();
    	}catch(IOException ex) {	
    	}
        
        try {
			PrintWriter pw = new PrintWriter("Log.txt");
			pw.println("\nTipo de transaccion: "+dateFormat.format(date)); //se debe concatenar con el tipo de transaccion
			pw.close();
		}catch(Exception err){
			
    	}
    		
    	
    	
    }
    

}
