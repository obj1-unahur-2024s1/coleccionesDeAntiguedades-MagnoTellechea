/** First Wollok example */
object casaDeAntiguedades {
	const coleccion = []
	method todoLoQueTiene() = coleccion
	method adquirirUnaAntiguedad(antiguedad) = coleccion.add(antiguedad)
	method adquirirUnNuevoLote() = coleccion.addAll([])
	method tieneStock() = coleccion.isEmpty()
	method cuantasAntiguedadesTiene() = coleccion.size()
	method ultimaAntiguedadAdquirida() = coleccion.last()
	method analizarAntiguedad(antiguedad) = antiguedad.esMuyAntigua()
	 
}
