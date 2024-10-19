class Chocolate {
  String tipo;
  int cantidad;

  Chocolate(this.tipo, this.cantidad);

  double obtenerPrecioUnitario() {
    switch (tipo) {
      case 'Primor':
        return 8.5;
      case 'Dulzura':
        return 10.0;
      case 'Tentacion':
        return 7.0;
      case 'Explosion':
        return 12.5;
      default:
        return 0;
    }
  }

  double calcularDescuento() {
    if (cantidad < 5) return 0.04;
    if (cantidad < 10) return 0.065;
    if (cantidad < 15) return 0.09;
    return 0.115;
  }

  int calcularCaramelos() {
    double total = calcularImporte();
    return (total >= 250) ? cantidad * 3 : cantidad * 2;
  }

  double calcularImporte() {
    double precio = obtenerPrecioUnitario() * cantidad;
    double descuento = calcularDescuento();
    return precio - (precio * descuento);
  }
}

void main() {
  Chocolate chocolate = Chocolate('Dulzura', 10);
  print('Importe total: S/. ${chocolate.calcularImporte()}');
  print('Caramelos de obsequio: ${chocolate.calcularCaramelos()}');
}

