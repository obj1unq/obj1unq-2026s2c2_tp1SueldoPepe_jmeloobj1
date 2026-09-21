//PERSONAS
object pepe {
  var categoria = gerente
  var bonoPorResultados = bonoPorResultadoNulo
  var bonoPorPresentismo = bonoPorPresentismoNulo
  var faltas = 0
  
  method categoria(_categoria) {
    categoria = _categoria
  }
  
  method bonoPorResultados(_bonoPorResultado) {
    bonoPorResultados = _bonoPorResultado
  }
  
  method bonoPorPresentismo(_bonoPorPresentismo) {
    bonoPorPresentismo = _bonoPorPresentismo
  }
  
  method sueldo() = (categoria.sueldoNeto() + bonoPorResultados.monto(
    self
  )) + bonoPorPresentismo.monto(self)
  
  method faltas() = faltas
  
  method faltas(_faltas) {
    faltas = _faltas
  }
}

object moria {
  var categoria = cadete
  var bonoPorResultado = bonoPorResultadoNulo
  
  method categoria(_categoria) {
    categoria = _categoria
  }
  
  method sueldo() = (categoria.sueldoNeto() * 1.3) + bonoPorResultado.monto(
    self
  )
  
  method bonoPorResultado(_bonoPorResultado) {
    bonoPorResultado = _bonoPorResultado
  }
}

object ernesto {
  var categoria = cadete
  var bonoPorPresentismo = bonoPorPresentismoNulo
  var compañero = pepe
  
  method sueldo() = compañero.sueldoNeto() + bonoPorPresentismo.monto(self)
  
  method compañero(_compañero) {
    compañero = _compañero
  }
  
  method categoria() = categoria
  
  method categoria(_categoria) {
    categoria = _categoria
  }
  
  method faltas() = 0
  
  method bonoPorPresentismo(_bonoPorPresentismo) {
    bonoPorPresentismo = _bonoPorPresentismo
  }
}

object roque {
  const sueldoNeto = 28000
  var bonoPorResultados = bonoPorResultadoNulo
  
  method sueldo() = (sueldoNeto + bonoPorResultados) + 9000
  
  method bonoPorResultados() = bonoPorResultados
  
  method bonoPorResultados(_bonoPorResultados) {
    bonoPorResultados = _bonoPorResultados
  }
} //CATEGORÍAS

object cadete {
  method sueldoNeto() = 20000
}

object gerente {
  method sueldoNeto() = 15000
}

object vendedor {
  var tieneMuchasVentas = false
  const sueldoNeto = 16000
  
  method sueldo() = sueldoNeto * if (tieneMuchasVentas) 1.3 else 1
  
  method activarAumentoPorMuchasVentas() {
    tieneMuchasVentas = true
  }
  
  method desactivarAumentoPorMuchasVentas() {
    tieneMuchasVentas = false
  }
}

object medioTiempo {
  method categoriaBase(categoria) = categoria.sueldoNeto() / 2
} //BONO X PRESENTISMO

object bonoPorPresentismoAjuste {
  method monto(empleado) = if (empleado.faltas() == 0) 100 else 0
}

object bonoPorPresentismoNormal {
  method monto(empleado) = if (empleado.faltas() == 0) {
    2000
  } else {
    if (empleado.faltas() == 1) 1000 else 0
  }
}

object bonoPorPesentismoDemagógico {
  method monto(empleado) = if (empleado.sueldoNeto() < 18000) {
    500
  } else {
    if (empleado.sueldoNeto() > 18000) 300 else 0
  }
}

object bonoPorPresentismoNulo {
  method monto(empleado) = 0
} //BONO X RESULTADO

object bonoPorResultadoPorcentaje {
  method monto(empleado) = empleado.sueldoNeto() * 0.1
}

object bonoPorResultadoMontoFijo {
  method monto(empleado) = 800
}

object bonoPorResultadoNulo {
  method monto(empleado) = 0
}


