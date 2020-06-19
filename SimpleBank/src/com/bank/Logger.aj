package com.bank;

public aspect Logger {
	pointcut success() : call(* crear*(..) );
    after() : success() {
    //Aspecto ejemplo: solo muestra este mensaje después de haber creado un usuario 
    	System.out.println("**** User created ****");
    }
    
}
