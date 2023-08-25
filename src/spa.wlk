import personas.*

object spa {
	
	method atender(persona) {
		persona.recibirMasaje()
		persona.darseBanioDeVapor()
	}
	
}

/*
 1. olivia no posee darseBanioDeVapor(), por ende no va a funcionar porque olivia no entiende estem ensaje, no es un metodo polimorfico para todos los objetos porque 
  no respeta el contrato (lo que debe hacer el spa, en este caso. recibirMasaje() y darseBanioDeVapor() ) .
 
 2. se le agrega el metodo darseBanioDeVapor() a olivia para que se respete el contrato de spa y sea polimorfico respecto a spa.
 
*/