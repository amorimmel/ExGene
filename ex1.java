package aula01;

import java.util.Scanner;

public class ex1 {

	public static void main(String[] args) {
		int n1,n2,n3;
		
		Scanner leia = new Scanner (System.in);
		
		System.out.println("\nInforme o primeiro n�mero");
		n1= leia.nextInt();
		
		System.out.println("\nInforme o segundo n�mero");
		n2= leia.nextInt();
		
		System.out.println("\nInforme o terceiro n�mero");
		n3= leia.nextInt();
		
		if (n1>n2 && n1>n3){
		System.out.println("\nO maior n�mero �:" + n1);
		}
		
		else if (n2 > n1 && n2 > n3) {
		System.out.println("\nO maior n�mero �:" + n2);
		}
		
		else {
		System.out.println("\nO maior n�mero �:" + n3);
		}


		
		
		
		
		
		
//		media = (n1 + n2 + n3)/3;
//		System.out.printf("\nA media foi de: %2.2f", media );
		

	}

}
