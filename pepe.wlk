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
      return self.sueldoNeto() + bonoPorResultados.montoPara(self) + bonoPorPresentismo.monto(self)
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


object bonoPorPresentismoAjuste(empleado){
  empleado.faltas()
}
object bonoPorPresentismoNormal(empleado) {

}
 
object  {
  
}
