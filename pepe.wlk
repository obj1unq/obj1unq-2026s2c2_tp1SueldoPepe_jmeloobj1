object pepe {

    var categoria = cadete
    var bonoPorResultado = bonoNulo
    var bonoPorPresentismo = BonoNulo
    var faltas = 0 
    method sueldoNeto(categoría) {
      return categoría.sueldoNeto()
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
object bonoPorPresentismoNormal() {
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
    return if (empleado.sueldoNeto(categoría) < 18000){
      else if (empleado.sueldoNeto(categoría) > 18000 ){
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