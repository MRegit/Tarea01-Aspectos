package observer;

public aspect Connector {
	
	pointcut cambiarColor(String color) : call(* setColor(String)) && args(color);
	after(String color) : cambiarColor(color){
		switch(color) {
			case "negro":
				System.out.println("El color es NEGRO");
				break;
			case "azul":
				System.out.println("El color es AZUL");
				break;
			case "rojo":
				System.out.println("El color es ROJO");
				break;
		}
	}
	
}
