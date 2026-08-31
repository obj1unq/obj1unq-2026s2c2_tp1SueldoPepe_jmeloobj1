//PERSONAS
object pepe {
    var categoria = gerente
    var bonoPorResultados = bonoPorResultadoNulo
    var bonoPorPresentismo = bonoPorPresentismoNulo
    var faltas = 0 

method categoria() {
  return categoria
}

method categoria(_categoria) {
  categoria = _categoria
}

  method bonoPorResultados() {
    return bonoPorResultados
  }
  
  method bonoPorResultados(_bonoPorResultado) {
    bonoPorResultados = _bonoPorResultado
  }

  method bonoPorPresentismo() {
    return bonoPorPresentismo
  }

   method bonoPorPresentismo(_bonoPorPresentismo){
        bonoPorPresentismo = _bonoPorPresentismo
   }

  
    method sueldo() {
      return categoria.sueldoNeto() + bonoPorResultados.monto(self) + bonoPorPresentismo.monto(self)
    }

    method faltas() {
      return faltas
    }

method faltas(_faltas) {
  faltas = _faltas
}
    

}

object moria{
  var categoria = cadete
  var bonoPorResultado = bonoPorResultadoNulo
  
method categoria() {
  return categoria
}

method categoria(_categoria) {
  categoria = _categoria
}

  method sueldo(){
    return  categoria.sueldoNeto() * 1.3 + bonoPorResultado 
  }

  method bonoPorResultado() {
    return bonoPorResultado
  }

  method bonoPorResultado(_bonoPorResultado) {
    bonoPorResultado = _bonoPorResultado
  }
  
}

object ernesto {
  var categoria = cadete 
  var bonoPorPresentismo = bonoPorPresentismoNulo
  method sueldo() {
    return categoria.sueldoNeto() + bonoPorPresentismo
  }

  method categoria() {
    return categoria
  }

  method categoria(_categoria) {
    categoria = _categoria
  }

}


object roque{
  var sueldoNeto = 20000
  var bonoPorResultados = bonoPorResultadoNulo

  method sueldo() {
    return sueldoNeto + bonoPorResultados + 9000
  }

  method sueldo(_sueldoNeto) {
    sueldoNeto = _sueldoNeto
  }

  method bonoPorResultados() {
    return bonoPorResultados
  }

  method bonoPorResultados(_bonoPorResultados) {
    bonoPorResultados = _bonoPorResultados
  }
}

//CATEGORÍAS
object cadete{
method sueldoNeto() {
  return 20000
}
}



object gerente{
    method sueldoNeto() {
      return 15000
    }
}

object vendedor{
  var tieneMuchasVentas = false 
  
  method sueldoNeto(){
    return if (tieneMuchasVentas){
      (16000 * 1.25)
    }
    else{  
      16000  
      }
  } 
  
  method activarAumentoPorMuchasVentas() {
    tieneMuchasVentas = true
  }

  method desactivarAumentoPorMuchasVentas() {
    tieneMuchasVentas = false
  }
  
}

object medioTiempo {
  
  method categoriaBase(categoria) {
    return (categoria.sueldoNeto() / 2)
  }

}


//BONO X PRESENTISMO
object bonoPorPresentismoAjuste{
  method monto(empleado){
  return if (empleado.faltas() == 0){
    100
  }
  else{
    0
  }
}
}


object bonoPorPresentismoNormal {
method monto(empleado){
  return  if (empleado.faltas()==0){
      2000
  }
  else if (empleado.faltas() == 1){
    1000
  }
  else{
    0
  }
}
}
 


object bonoPorPesentismoDemagógico {
  method monto(empleado){
    return if (empleado.sueldoNeto() < 18000){
    500
    }
      else if (empleado.sueldoNeto() > 18000 ){
        300
      }
    else{
    0
    }
  } 
}



object bonoPorPresentismoNulo {
  method monto(empleado){
    return 0
  }
}


//BONO X RESULTADO
object bonoPorResultadoPorcentaje{
  method monto(empleado) {
    return empleado.sueldoNeto() * 0.1
  }
}

object bonoPorResultadoMontoFijo{
  method monto(empleado) {
    return 800
  }
}

object bonoPorResultadoNulo{
  method monto(empleado) {
    return 0
  }
}






