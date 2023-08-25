
object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	
	method recibirMasaje() {
		gradoDeConcentracion += 3
	}
	
	method discutir() {
		gradoDeConcentracion -= 1
	}
	
	method darseBanioDeVapor() {}
}


object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasajes() {
		esFeliz = true
	}
	
	method darseBanioDeVapor() {
		peso -= 500
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	
	method corre() {
		peso -= 300
	}
	
	method verNoticiero() {
		esFeliz = false
	}
	
	method estaPerfecto() {
		return self.esFeliz() and not self.tieneSed() and peso.between(50000,70000)
	}
	
	/* es igual pero redactado de otra manera
	method estaPerfecto() {
		return esFeliz() and not tieneSed() and peso.between(50000,70000)
	}
	 */
	 
	method medioDiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
	
}

object ramiro {
	/* 
		contracturado: si no lo inicializamos comenzara con un null y romperá cuando lo modifique la ejecucion de un metodo. Ademas no tenemos un setter.
		Lo mismo ocurre con tienePielGrasosa, no importa el valor, pero no te	 
	*/	
	
	var contracturado = 0
	var tienePielGrasosa = true
	
	method contracturado() = contracturado
	method tienePielGrasosa() = tienePielGrasosa
	
	method recibirMasaje() {
		contracturado = 0.max(contracturado - 2)
	}
	
	method darseBanioDeVapor() {
		tienePielGrasosa = false	
	}
	
	method comerBigMac() {
		tienePielGrasosa = true
	}
	
	method bajarALaFosa() {
		tienePielGrasosa = true
		contracturado += 1
	}
	
	method jugarAlPaddle() {
		contracturado += 3
	}
	
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}
