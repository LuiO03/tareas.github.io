import 'dart:io';

// Función para obtener el precio del chocolate según su tipo
double obtenerPrecio(String tipoChocolate) => tipoChocolate == "Primor"
    ? 8.5
    : tipoChocolate == "Dulzura"
        ? 10.0
        : tipoChocolate == "Tentación"
            ? 7.0
            : tipoChocolate == "Explosión"
                ? 12.5
                : 0.0;

// Función para calcular el descuento según la cantidad de chocolates
double obtenerDescuento(int cantidad) => cantidad < 5
    ? 0.04
    : cantidad < 10
        ? 0.065
        : cantidad < 15
            ? 0.09
            : 0.115;

// Función para calcular la cantidad de caramelos obsequiados
int obtenerCaramelos(double importeTotal, int cantidadChocolates) =>
    importeTotal >= 250 ? cantidadChocolates * 3 : cantidadChocolates * 2;

void main() {
  // Solicitar al usuario el tipo de chocolate
  print("Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión):");
  String? tipoChocolate = stdin.readLineSync();

  // Solicitar al usuario la cantidad de chocolates
  print("Ingrese la cantidad de chocolates adquiridos:");
  String? cantidadInput = stdin.readLineSync();
  int cantidadChocolates = int.parse(cantidadInput!);

  // Obtener el precio unitario del chocolate
  double precioUnitario = obtenerPrecio(tipoChocolate!);

  // Calcular el importe total
  double importeCompra = precioUnitario * cantidadChocolates;

  // Calcular el descuento
  double descuento = obtenerDescuento(cantidadChocolates) * importeCompra;

  // Calcular el importe a pagar
  double importeAPagar = importeCompra - descuento;

  // Calcular la cantidad de caramelos obsequiados
  int caramelosObsequiados = obtenerCaramelos(importeAPagar, cantidadChocolates);

  // Imprimir los resultados
  print('Importe de la compra: S/. $importeCompra');
  print('Importe del descuento: S/. $descuento');
  print('Importe a pagar: S/. $importeAPagar');
  print('Caramelos obsequiados: $caramelosObsequiados');
}
