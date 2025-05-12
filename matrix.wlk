object neo {
  var energia = 100
  method saltar() {
    energia = energia / 2
  }
  method vitalidad() {
    return energia / 10
  }
  method esElegido() = true
}

object morfeo {
  var vitalidad = 8
  var descansado = true
  method saltar() {
    descansado = !descansado
    vitalidad=-1
  } 
  method vitalidad() {
    return vitalidad
  }
  method esElegido() = false
}

object trinity {
  method vitalidad() {
    return 0
  }
  method saltar() {
    return 
  }
  method esElegido() = false
}

object nave {
  var pasajeros = #{}
  method cantidadPasajeros() {
    return pasajeros.size()
  }
  method pasajeroConMasVitalidad() {
    return pasajeros.max({
        pasa => pasa.vitalidad()
    })
  }
  method estaEquilibrada() {
    return pasajeros.all({
        pasa=>pasa.vitalidad() > pasajeros.vitalidad() * 2
    })
  }
  method estaElElegidoEnLaNave() {
    return pasajeros.any({
        pasa => pasa.esElegido()
    })
  }
  method choca() {
    pasajeros.forEach({
        pasa => pasa.saltar()
    })
    pasajeros.clear()
  }
  method acelera() {
    pasajeros.all({
        pasa => !pasa.esElegido()
    }).forEach({
        pasa=>pasa.saltar()
    })
  }
}

