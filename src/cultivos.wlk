import hector.*

class Trigo {
	var etapa = 0
	
	method imagen() = "wheat_" + etapa.toString() + ".png"
	method regar() {
		etapa = ( etapa + 1) % 4 				
	}
}

class Maiz {
	var esAdulta = false
	method imagen() {
		if ( esAdulta ) { return "corn_adult.png" }
		else { return "corn_baby.png" }
       }


    method regar() {
		esAdulta = true
	}
	
}

class Tomaco {
	var property posicion
	
	method imagen() = "tomaco.png"
	
	method regar() {
		if ( posicion.y() < 9 ) {
			self.posicion(posicion.up(1))
		}
	}
	
}

