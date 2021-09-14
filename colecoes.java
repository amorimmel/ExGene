package aula05;

import java.util.ArrayList;
import java.util.Scanner;

public class colecoes {

	public static void main(String[] args) {
		
		Scanner ler = new Scanner(System.in);
		
		ArrayList <String> estoque = new ArrayList();
		
		int inf;
		
		do {
			
			System.out.println("\n(1 adicionar produtos");
			System.out.println("\n(2)remover produtos");
			System.out.println("\n(3) atualizar produtos");
			System.out.println("\n(4) Mostrar os produtos");
			
			inf = ler.nextInt();

			switch(inf)
			{
			case 1:
				ler.nextLine();
				System.out.println("\nInforme o produto para adi��o:");
				String produto = ler.nextLine();
				estoque.add(produto);
				break;
				
			
			case 2:
				ler.nextLine();
				System.out.println("\nInforme o produto para remo��o: ");
				String produtoo = ler.nextLine();
				if(estoque.contains(produtoo))   //contains p validar se o elemento existe ou n�o
				{
					estoque.remove(produtoo);
				}
				else
				{
					System.out.println("\nProduto n�o consta cadastrado na base de dados!");
				}
				System.out.println(estoque);
				break;
				
				
			case 3:
				
				ler.nextLine();
				
				System.out.println("\nDigite o produto para atualiza��o: ");
				String v = ler.nextLine();
				
				//variavel v ir� armazenar a informa��o do produto que ser� atualizado
				
				System.out.println("\nDgite o nome do produto que entrar� no lugar do produto: "+v+": "); 
				
				String novo = ler.nextLine();
				//variavel novo ir� armazenar a nova informa��o que o usu�rio deseja atualizar
				
				if(estoque.contains(v))
				{
					estoque.remove(v);
					estoque.add(novo);
				}
				else
				{
					System.out.println("\nProduto n�o consta cadastrado na base de dados!");
				}
				System.out.println(estoque);
				break;
             
				
			case 4:
				System.out.println("\nOs produtos do estoque s�o: ");
				System.out.println(estoque);
				break;
			    default:
				System.out.println("\nOp��o inv�lida!!!");
				
		     }
			
	        }  while(inf!=0);



		}
			
	}

