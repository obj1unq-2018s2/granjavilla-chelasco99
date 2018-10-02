import cultivos.*

object hector {
	var property posicion = game.at(2,2)
	method imagen() = "player.png"
	
	method plantarMaiz() {
		const maiz = new Maiz()
		game.addVisualIn(maiz, posicion.clone())		
	}
	
	method plantarTrigo() {
		const trigo = new Trigo()
		game.addVisualIn(trigo, posicion.clone())
	}
	
	method plantarTomaco() {
		const tomaco = new Tomaco()
		game.addVisualIn(tomaco, posicion.clone())
	}
	
	method regar(plantas) {
	   plantas.remove(self)
	   plantas.forEach { especie => especie.regar() }
	   	if ( plantas.isEmpty() ) {
	   		game.say ( self, "no tengo nada para regar" )
	   	}
	   }
	} 
	
	
	

