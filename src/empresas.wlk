import profesionales.*
import universidades.*

class Empresa{
	var property profesionales = []
	var property honorariosReferencia = 0
	
	method profesionalesCaros() = profesionales.filter({p=>p.honorariosPorHora()>honorariosReferencia})
	method profesionalesBaratos() = profesionales.min({p=>p.honorariosPorHora()})
	
	method profesionalesDeLaUnivesidadDe(universidad){
		return profesionales.count({p => p.universidad() == universidad})
	}
	method universidadesFormadoras() = profesionales.map({p => p.universidad()}).asSet()
	
	method esDeGenteAcotada() = profesionales.all({p=>p.provinciasDondePuedeTrabajar().size() > 3})
}
