package ProjetoReciclagem;

public class MaterialMetal extends MaterialReciclavel implements Reciclagem  {

	private String ferragens;
	private String latas;
	
	
	public MaterialMetal()
	{
		
	}


	public String getFerragens() {
		return ferragens;
	}


	public void setFerragens(String ferragens) {
		this.ferragens = ferragens;
	}


	public String getLatas() {
		return latas;
	}


	public void setLatas(String latas) {
		this.latas = latas;
	}
	
	@Override
	public void descartar()
	
	    {
		
		System.out.println("Informe qual é a opção de metal que deseja descartar: ");
		System.out.println("[1]Ferragens\n[2]Latas\n[3]Sair");
		setTipo(leia.nextInt());
		
		while(getTipo() < 1 || getTipo() > 3) 
		{
			System.out.println("Opção inválida");
			System.out.println("Informe qual é a opção de metal que deseja descartar: ");
			System.out.println("[1]Ferragens\n[2]Latas\n[3]Sair");
			setTipo(leia.nextInt());
		}
	
		switch(getTipo())
		{
		
		case 1:System.out.println("\n\"Amarre a ferragens de modo a restringir a movimentação e cubra as pontas para maior segurança no transporte.\"\nBusque por pontos de reciclagem ou coleta seletiva");
		break;	
		
		case 2:System.out.println("\nAs latas devem ser separadas do lixo comum ainda em casa e então, encaminhadas para a coleta.\nBusque por pontos de reciclagem ou coleta seletiva");
		break;	

		case 4:System.out.println("\nSaindo... :)!");
		break;	
		}
	    }
	
	@Override
	public void danoAmbiente()
	{
		
		System.out.println("\nOs impactos ambientais ao meio ambiente decorrentes de sua mineração e refinação e consequente aspectos como florestas destruídas, água contaminada com resíduos de alumínio.");
	
	}
	
	
	@Override
	public void reutilizar()
	{
		
		System.out.println("\nOs materiais de metal, normalmente são poucos reutilizaveis. O boa pratica e a indicação é que seja efetuado a reciclagem desse material. :) ");
		
	}
	
}

