package aula01;

import java.util.Scanner;

public class exFor {

	public static void main(String[] args) {
		int n,i,par=0,impar=0;
		Scanner leia = new Scanner (System.in);
	
        
            for (i=1;i<=10;i++)
            {
            	
            	System.out.println("\nInforme o número" );
        		n= leia.nextInt();
        	
            if (n %2 == 0) {
            	par++;
            	
    		}else{
    			
    			impar++;
    			
    		}	 	
            }
            
            System.out.println("\nA quantidade de numeros pares digitados é "+ par);
            System.out.println("\nA quantidade de numeros pares digitados é "+ impar);

	}

}
