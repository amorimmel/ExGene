package aula01;

import java.util.Scanner;

public class exDoWhile {

	public static void main(String[] args) {
		
		int  valor=0, x=0, soma=0;
		
		Scanner leia = new Scanner(System.in);
		

		do { 
			System.out.println("\nDigite um valor qualquer: ");
			valor = leia.nextInt();
			
			if(valor!= 0)
			{
				soma += valor; 
			}
			x++;
		
		} while(valor!= 0);
		
		System.out.println("\nA soma total dos números é :"+ soma);
}
}
