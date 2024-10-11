import 'dart:io';

// Función para obtener el precio del producto según su tipo
double obtenerPrecio(String tipoProducto) => tipoProducto == "P1"
    ? 15.0
    : tipoProducto == "P2"
        ? 17.5
        : tipoProducto == "P3"
            ? 20.0
            : 0.0;

String obtenerRegalo(int cantidad) => cantidad < 26
    ? "Un lapicero"
    : cantidad <= 50
        ? "Un cuaderno"
        : "Una agenda";

void main() {
  print("Ingrese el tipo de producto (P1, P2, P3):");
  String? tipoProducto = stdin.readLineSync();

  print("Ingrese la cantidad de unidades adquiridas:");
  String? cantidadInput = stdin.readLineSync();
  int cantidadUnidades = int.parse(cantidadInput!);

  double precioUnitario = obtenerPrecio(tipoProducto!);

  double importeAPagar = precioUnitario * cantidadUnidades;

  String regalo = obtenerRegalo(cantidadUnidades);

  print('Importe a pagar: S/. $importeAPagar');
  print('Regalo: $regalo');
}
