/** First Wollok example */
object casaDeAntiguedades {
	const coleccion = []
	method todoLoQueTiene() = coleccion
	method adquirirUnaAntiguedad(antiguedad) = coleccion.add(antiguedad)
	method adquirirUnNuevoLote(nuevasAntiguedades) = coleccion.addAll(nuevasAntiguedades)
	method tieneStock() = not coleccion.isEmpty()
	method cuantasAntiguedadesTiene() = coleccion.size()
	method ultimaAntiguedadAdquirida() = coleccion.last()
	method analizarAntiguedad(antiguedad) = antiguedad.esMuyAntigua()
	method aniosAntiguedadEnPosicion(posicion) = coleccion.get(posicion).esMuyAntigua()
	
	method restaurarTodas(){
		coleccion.forEach({ antiguedad => antiguedad.restaurar()})
	}
	method restaurarEn(posicion){
		const antiguedad = coleccion.get(posicion)
		if (antiguedad.enMalEstado()){
			antiguedad.restaurar()
		}
	}
	
	method venderLasMasAntiguas(){
		coleccion.filter({a => a.esMuyAntigua()}).forEach({ a => a.vender(); coleccion.remove(a)})
	}
	
	method venderLaQueMasAniosTiene(){
		coleccion.max({a => a.anios()}).vender()
	}
	 
}

// para resover 

object anioActual{
	var property anio 
	
	// method anio(unValor){
	// 	anio = unValor
	//}
	
	//method anio() = anio
}

object jarron{
	const cantidadDeAnios = 254
	method esMuyAntigua() = cantidadDeAnios >= 100
	method vender()
	method restaurar()
}
// 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s