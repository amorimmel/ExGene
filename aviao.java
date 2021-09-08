package aula03;

public class aviao {
	
	private String id;
	private String companhiaAerea;
	private String assentos;
	
	
	public aviao(String i, String c, String a) 
	{
		this.setId(i);
		this.setCompanhiaAerea(c);
		this.setAssentos(a);
		
	}

	

		public void imprimir()
		{
		 System.out.println("\nO avião de identificação: "+id+" da companhia aerea:"
		+companhiaAerea+" possui o número total de assentos de: "+assentos);
		 
		}



		public String getId() {
			return id;
		}



		public void setId(String id) {
			this.id = id;
		}



		public String getCompanhiaAerea() {
			return companhiaAerea;
		}



		public void setCompanhiaAerea(String companhiaAerea) {
			this.companhiaAerea = companhiaAerea;
		}



		public String getAssentos() {
			return assentos;
		}



		public void setAssentos(String assentos) {
			this.assentos = assentos;
		}
	
	
	
	

}
