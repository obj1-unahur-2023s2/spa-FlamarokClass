
object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	
	method recibirMasajes() {
		gradoDeConcentracion += 3
	}
	
	method discutir() {
		gradoDeConcentracion -= 1
	}
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
	
	/*
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
	var contracturado = 0
	var tienePielGrasosa 
	
	method contracturado() = contracturado
	method tienePielGrasosa() = tienePielGrasosa
	
	method recibirMasaje() {
		contracturado = 0.max(contracturado - 1)
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
