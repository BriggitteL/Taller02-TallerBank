package com.bank;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public aspect Logger {
	pointcut successUser() : call(* crear*(..) );
    after() : successUser() {
    //Muestra este mensaje después de haber creado un usuario 
    	System.out.println("**** Usuario creado ****");
    }
    pointcut successTransaction(): call(* moneyMake*(..) );
    after(): successTransaction(){
    	//Muestra este mensaje despues de realizar la transaccion 
    	System.out.println("**** Transacción exitosa ****");
    	//CODIGO PARA OBTENER LA HORA ACTUAL
    			DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    	        Date date = new Date();
    	        //CODIGO PARA OBTENER LA HORA ACTUAL
    	    	        
    	    	System.out.println("\nTipo de transaccion: Realizar Transaccion"); //se debe concatenar con el tipo de transaccion
    	    	System.out.println("\nHora de transaccion: "+dateFormat.format(date)+"\n");
    	    	
    	        
    	        File archivo;
    	    	archivo = new File("Log.txt");
    	        
    	        if(!archivo.exists()){
    	        	try {
    	        		archivo.createNewFile();
    	        		FileWriter fw= new FileWriter("Log.txt", true);
    	        		BufferedWriter bw = new BufferedWriter(fw);
    	        		PrintWriter pw = new PrintWriter(bw);
    	        		//PrintWriter pw = new PrintWriter("Log.txt");
    	        		System.out.println("\nARCHIVO NUEVO\n");
    	    			pw.println("\nTipo de transaccion: Realizar Transaccion"); //se debe concatenar con el tipo de transaccion
    	    			pw.println("\nHora de transaccion: "+dateFormat.format(date)+"\n");
    	    			pw.close();
    	        	}catch(IOException ex) {	
    	        	}
    	        	
    	        }else {
    	        	
    	        }
    	        try {
    	        	FileWriter fw= new FileWriter("Log.txt", true);
	        		BufferedWriter bw = new BufferedWriter(fw);
	        		PrintWriter pw = new PrintWriter(bw);
    	        	//PrintWriter pw = new PrintWriter("Log.txt");
    	    		pw.println("\nTipo de transaccion: Realizar Transaccion"); //se debe concatenar con el tipo de transaccion
	    			pw.println("\nHora de transaccion: "+dateFormat.format(date)+"\n");
    	    		pw.close();
    	    	}catch(IOException ex) {	
    	    	}
    	        
    	       
    	
    	}
    pointcut successRetiro(): call(* moneyWith*(..) );
    after(): successRetiro(){
    	//Muestra este mensaje despues de realizar la transaccion 
    	System.out.println("**** Transacción exitosa ****");
    	//CODIGO PARA OBTENER LA HORA ACTUAL
    			DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    	        Date date = new Date();
    	        //CODIGO PARA OBTENER LA HORA ACTUAL
    	    	        
    	    	System.out.println("\nTipo de transaccion: Retirar dinero"); //se debe concatenar con el tipo de transaccion
    	    	System.out.println("\nHora de transaccion: "+dateFormat.format(date)+"\n");
    	    	
    	        
    	        File archivo;
    	    	archivo = new File("Log.txt");
    	        
    	        if(!archivo.exists()){
    	        	try {
    	        		archivo.createNewFile();
    	        		FileWriter fw= new FileWriter("Log.txt", true);
    	        		BufferedWriter bw = new BufferedWriter(fw);
    	        		PrintWriter pw = new PrintWriter(bw);
    	        		System.out.println("\nARCHIVO NUEVO\n");
    	    			pw.println("\nTipo de transaccion: Retirar dinero"); //se debe concatenar con el tipo de transaccion
    	    			pw.println("\nHora de transaccion: "+dateFormat.format(date)+"\n");
    	    			
    	    			pw.close();
    	        	}catch(IOException ex) {	
    	        	}
    	        	
    	        }else {
    	        	
    	        }
    	        try {
    	        	FileWriter fw= new FileWriter("Log.txt", true);
	        		BufferedWriter bw = new BufferedWriter(fw);
	        		PrintWriter pw = new PrintWriter(bw);
    	    		//PrintWriter pw = new PrintWriter("Log.txt");
    	    		pw.println("\nTipo de transaccion: Retirar dinero"); //se debe concatenar con el tipo de transaccion
	    			pw.println("\nHora de transaccion: "+dateFormat.format(date)+"\n");
    	    		pw.close();
    	    	}catch(IOException ex) {	
    	    	}
    	       
    	       
    	
    }
}
