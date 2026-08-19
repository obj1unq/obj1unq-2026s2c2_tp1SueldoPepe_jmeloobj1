object pepe {
    var sueldo = 0

    method sueldoNeto(categoría) {
      return categoría.sueldoNeto()
    }

    method sueldoDePepe() {
      return sueldo
    }

    method sueldoDePepe(categoría ,  bonoResultadosPepe, bonoPresentismoPepe) {
      sueldo = self.sueldoNeto(categoría) + bonoPorResultadosPepe + bonoPorPresentismoPepe
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


object bonoPorResultados {
  method porPorcentaje(sueldoNeto) {
    return sueldoNeto/10
  }

  method montoFijo() {
    return 800
  }

  method nulo() {
    return 0
  }
}

object bonoPorPresentismo {
  method normal(faltasDeEmpleado){
    return if faltasDeEmpleado = 0{
        2000
    }
    else if faltasDeEmpleado = 1{
        1000
    }
    else{
        0
    }
}

method ajuste(faltasDeEmpleado) {
  return if faltasDeEmpleado = 1{
    100
  }
  else{
    0
  }
}

method demagógico(sueldoNetoEmpleado) {
  return if sueldoNetoEmpleado < 18000{
    500
  }
  else if sueldoNetoEmpleado > 18000{
    300
  }
}

method nulo() {
  return 0
}
}
