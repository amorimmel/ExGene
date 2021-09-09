package aula04;

public class cavalo extends animal {
	
private String correr;
	
	public cavalo (String nome, String som,int idade, String correr) {
		super (nome,som,idade);
		this.correr = correr;
	}

	public String getCorrer() {
		return correr;
	}

	public void setCorrer(String correr) {
		this.correr = correr;
	}
	
	public void imprimirCavalo()
	{
		System.out.println("\nNome do cavalo: "+getNome()+"\nsom: "+getSom()
		+"\nIdade: "+getIdade()+"anos"+"\ndeve:"+correr);
	}


}
