class Estudiante {
  String categoria;
  double promedio;
  double pension;

  Estudiante(this.categoria, this.promedio) {
    pension = _obtenerPensionBase();
  }

  double _obtenerPensionBase() {
    switch (categoria) {
      case 'A':
        return 550;
      case 'B':
        return 500;
      case 'C':
        return 460;
      case 'D':
        return 400;
      default:
        return 0;
    }
  }

  double obtenerDescuento() {
    if (promedio >= 18.00) {
      return 0.15;
    } else if (promedio >= 16.00) {
      return 0.12;
    } else if (promedio >= 14.00) {
      return 0.10;
    } else {
      return 0.00;
    }
  }

  double calcularNuevaPension() {
    double descuento = obtenerDescuento();
    return pension - (pension * descuento);
  }
}

void main() {
  Estudiante estudiante = Estudiante('B', 17.5);
  print('Pensión original: S/. ${estudiante.pension}');
  print('Pensión con descuento: S/. ${estudiante.calcularNuevaPension()}');
}
