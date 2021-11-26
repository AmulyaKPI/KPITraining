package kpitraining;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class TotalAmountExmp {
	public double balance(int amount, double rate, int year){
	    double yearlyRate = amount * rate;
	    double totalAmount = amount;
        System.out.println(amount + " :- " + " grows with the interest rate of " + rate);
        for(int i=0;i<=year;i++) {
        	totalAmount=totalAmount+yearlyRate;
        	System.out.println(i + "   " + totalAmount);
        }
    	//System.out.println(totalAmount);
    	return totalAmount;
	}
	@Test
	void test() {
		//fail("Not yet implemented");
		double totalAmount=balance(4000,4.5,7);
				assertEquals(148000.0,totalAmount);
	}
}
