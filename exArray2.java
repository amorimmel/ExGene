package aula02;

import java.util.Scanner;

public class exArray2 {

	public static void main(String[] args) {
		final int linha=3,coluna=3;
		int num[][] = new int[linha][coluna];
		int cont=0, contmenores=0, l=0,c=0;
		
		
		Scanner leia = new Scanner (System.in);
		
		for(l=0;l<linha;l++)
		{
			for(c=0;c<coluna;c++)
			{
				System.out.println("\nInforme um número: ");
				num[l][c] = leia.nextInt();
			}
		}
		
		
		for (l=0;l<linha;l++)
		{
			for(c=0;c<coluna;c++)
			{

		if(num[l][c] > 10)
		{
			cont++;
		}
		else {
			contmenores++;
		}
		}
		
		
	}
		System.out.println("\nOs números com valor acima de 10 são: " +cont);
}
}




