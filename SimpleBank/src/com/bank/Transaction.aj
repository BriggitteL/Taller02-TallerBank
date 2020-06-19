package com.bank;

public aspect Transaction {
	
	pointcut success_transaction() : call(* *.money*() );
    after() : success_transaction() {
    //Aspecto ejemplo: solo muestra este mensaje después de haber realizado una transacción
    	System.out.println("**** Transacción exitosa ****");
    }
    

}
