package aula03;

public class Cliente {
	private String nome;
	private String email;
	private String telContato;
	
	
	public Cliente(String n, String e, String t) 
	{
		this.setNome(n);
		this.setEmail(e);
		this.setTelContato(t);
		
	}

		public void imprimir()
		{
		 System.out.println("\nCliente\t"+nome+" possui o email:"
		+email+"cadastrado conosco e o telefone: "+telContato);
		 
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getTelContato() {
			return telContato;
		}

		public void setTelContato(String telContato) {
			this.telContato = telContato;
		}

		
		
	
	
}

