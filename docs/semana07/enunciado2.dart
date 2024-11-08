class Empleado {
  int minutosTardanza;
  int observaciones;

  Empleado(this.minutosTardanza, this.observaciones);

  int puntajePorPuntualidad() {
    if (minutosTardanza == 0) return 10;
    if (minutosTardanza <= 2) return 8;
    if (minutosTardanza <= 5) return 6;
    if (minutosTardanza <= 9) return 4;
    return 0;
  }

  int puntajePorRendimiento() {
    if (observaciones == 0) return 10;
    if (observaciones == 1) return 8;
    if (observaciones == 2) return 5;
    if (observaciones == 3) return 1;
    return 0;
  }

  int puntajeTotal() {
    return puntajePorPuntualidad() + puntajePorRendimiento();
  }

  double calcularBonificacion() {
    int puntaje = puntajeTotal();
    if (puntaje < 11) return puntaje * 2.5;
    if (puntaje <= 13) return puntaje * 5.0;
    if (puntaje <= 16) return puntaje * 7.5;
    if (puntaje <= 19) return puntaje * 10.0;
    return puntaje * 12.5;
  }
}

void main() {
  Empleado empleado = Empleado(3, 1);
  print('Puntaje total: ${empleado.puntajeTotal()}');
  print('Bonificación: S/. ${empleado.calcularBonificacion()}');
}
