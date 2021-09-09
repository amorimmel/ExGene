package aula04;

public class preguica extends animal{

	
private String subir;
	
	public preguica (String nome, String som,int idade, String subir) {
		super (nome,som,idade);
		this.subir = subir;
	}

	public String getSubir() {
		return subir;
	}

	public void setSubir(String subir) {
		this.subir = subir;
	}
	
	public void imprimirPreguica()
	{
		System.out.println("\nNome da preguiça: "+getNome()+"\nsom: "+getSom()
		+"\nIdade: "+getIdade()+"anos"+"\ndeve:"+subir);
	}

}
