package aula01;

import java.util.Scanner;

public class exWhile {

	public static void main(String[] args) {
		
		int idade=0,contmenos=0,contmais=0;
		
		Scanner leia = new Scanner(System.in);
		
		
		
		while (idade<99)
		
		{
			System.out.println("\nEscreva a idade do ser: ");
		    idade=leia.nextInt();
		    
		    
			 if(idade<21) {
			 contmenos++;
			 }
			 
			 if(idade>50)
			 {
			 contmais++;
			 }
		
		idade++;
		}
		
		System.out.println("\nQuantidade de pessoas abaixo de 21 são: " + contmenos);
		System.out.println("\nQuantidade de pessoas acima de 50 são: " + contmais);
	}		
}


			
	