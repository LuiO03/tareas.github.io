class Producto {
  String tipo;
  int cantidad;

  Producto(this.tipo, this.cantidad);

  double obtenerPrecioUnitario() {
    switch (tipo) {
      case 'P1':
        return 15.0;
      case 'P2':
        return 17.5;
      case 'P3':
        return 20.0;
      default:
        return 0;
    }
  }

  String obtenerRegalo() {
    if (cantidad < 26) return 'Un lapicero';
    if (cantidad <= 50) return 'Un cuaderno';
    return 'Una agenda';
  }

  double calcularImporte() {
    return obtenerPrecioUnitario() * cantidad;
  }
}

void main() {
  Producto producto = Producto('P1', 30);
  print('Importe total: S/. ${producto.calcularImporte()}');
  print('Regalo: ${producto.obtenerRegalo()}');
}

