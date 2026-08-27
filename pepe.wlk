object pepe {

    var categoria = cadete
    var bonoPorResultados = bonoResultado
    var bonoPorPresentismo = bonoPresentismo
    var faltas = 0 

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

    method sueldoNeto() {
      return categoria.sueldoNeto()
    }

    method sueldo() {
      return self.sueldoNeto() + bonoPorResultados.monto(self) + bonoPorPresentismo.monto(self)
    }

    method faltas() {
      return faltas
    }

    

}



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

object moria{
  var categoria = cadete
  var bonoPorResultado = bonoResultado
  var faltas = 0

  method sueldo(){
    return self.sueldoNeto(categoria) * 1.3 + bonoResultado
  }

  method bonoPorResultado() {
    return bonoPorResultado
  }

  method bonoPorResultado(_bonoPorResultado) {
    bonoPorResultado = _bonoPorResultado
  }
  
}

object vendedor{
  method sueldoNeto(){
    return 16000
  } 
  
}