package ProjetoReciclagem;

public class TesteProjeto {

	public static void main(String[] args) {
		MaterialMetal metal = new  MaterialMetal();
		metal.descartar();
		metal.danoAmbiente();
		metal.reutilizar(); 
	}

}
