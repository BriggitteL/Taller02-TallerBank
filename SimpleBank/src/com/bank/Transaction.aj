package com.bank;

public aspect Transaction {
	
	pointcut success_transaction() : call(* *.money*() );
    after() : success_transaction() {
    //Aspecto ejemplo: solo muestra este mensaje despu�s de haber realizado una transacci�n
    	System.out.println("**** Transacci�n exitosa ****");
    }
    

}
