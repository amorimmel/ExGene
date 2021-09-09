package aula04;

public class cachorro extends animal {

private String correr;
	
	public cachorro (String nome, String som,int idade, String correr) {
		super (nome,som,idade);
		this.correr = correr;
	}

	public String getCorrer() {
		return correr;
	}

	public void setCorrer(String correr) {
		this.correr = correr;
	}
	
	public void imprimirCachorro()
	{
		System.out.println("\nNome do cachorro: "+getNome()+"\nsom: "+getSom()
		+"\nIdade: "+getIdade()+"anos"+"\ndeve:"+correr);
	}

}
