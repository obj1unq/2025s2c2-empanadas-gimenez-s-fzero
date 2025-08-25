//Escribir aqui los objetos
//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var dineroDisponible = 0
  var deudasPendientes = 0

  method sueldo(_sueldo){
    sueldo = _sueldo
  }
  method sueldoDelMes() {
    return sueldo
  }
  method cobrarMes(plataACobrar) {
    dineroDisponible = dineroDisponible + plataACobrar
    if (deudasPendientes - dineroDisponible <= 0){
      deudasPendientes = 0
    }
    else{
      deudasPendientes = deudasPendientes - dineroDisponible
    }
  }
  method gastar(cantidadAGastar) {
    if (cantidadAGastar > dineroDisponible) {
      deudasPendientes = deudasPendientes + (cantidadAGastar - dineroDisponible)
      dineroDisponible = 0 
    }
    else { dineroDisponible = dineroDisponible - cantidadAGastar}
  }
  method dinero() {
    return dineroDisponible
  }
  method deuda() {
    return deudasPendientes
  }

}



object gimenez {
  var fondoParaSueldos = 300000
  method pagarSueldo(empleado){
    fondoParaSueldos = fondoParaSueldos - empleado.sueldoDelMes()
    empleado.cobrarMes(empleado.sueldoDelMes())
  }
  method fondo() {
    return fondoParaSueldos
  }
}






object baigorria {
  var cantDineroDisponible = 0
  const montoPorEmpanada = 15
  var cantDeEmpanadasVendidas = 0

  method sueldoDelMes() {
    return montoPorEmpanada * cantDeEmpanadasVendidas
  }
  method vender(cantEmpanadasAVender) {
    cantDeEmpanadasVendidas = cantDeEmpanadasVendidas + cantEmpanadasAVender
  }
  method cobrarMes(plataACobrar) {
    cantDineroDisponible = cantDineroDisponible + plataACobrar
    cantDeEmpanadasVendidas = 0
  }
  method totalCobrado() {
    return cantDineroDisponible
  }
}

