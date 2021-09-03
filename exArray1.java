package aula02;

import java.util.Scanner;

public class exArray1 {

	public static void main(String[] args) {
		int num[] = new int[6];
		int par=0,impar=0,somaMediaP=0, somaMediaI=0 ;
		
		Scanner leia = new Scanner(System.in);
		
		for(int i=0;i<=5;i++)
		{
			System.out.println("\nInforme o número" );
			num[i]= leia.nextInt();
			
			if (num[i] %2 ==0 ) {
				par++;
				somaMediaP += num[i];
			
		}
			
			else {
				impar++;
				somaMediaI += num[i];
				
			}
	}
	
		System.out.println("\nA soma dos números pares é: " + somaMediaP);
		System.out.println("\nA soma dos números ímpares é: " + somaMediaI);
		
	}
}








