import 'dart:io';

void main() {
  double Categoria_A = 550;
  double Categoria_B = 500;
  double Categoria_C = 460;
  double Categoria_D = 400;
  var pension;

  print("Ingrese su calificación:");
  String? notaIngresada = stdin.readLineSync();
  double calificacion = double.parse(notaIngresada!);

  print("Ingrese su categoría <A - B - C - D>:");
  String? categoriaIngresada = stdin.readLineSync();

  pension = (String categoria, double calificacion) {
    double descuento(double pensionBase, double porcentaje) => pensionBase - (pensionBase * porcentaje);

    switch (categoria) {
      case "A":
        return calificacion < 14
            ? Categoria_A
            : calificacion < 16
                ? descuento(Categoria_A, 0.1)
                : calificacion < 18
                    ? descuento(Categoria_A, 0.12)
                    : descuento(Categoria_A, 0.15);
      case "B":
        return calificacion < 14
            ? Categoria_B
            : calificacion < 16
                ? descuento(Categoria_B, 0.1)
                : calificacion < 18
                    ? descuento(Categoria_B, 0.12)
                    : descuento(Categoria_B, 0.15);
      case "C":
        return calificacion < 14
            ? Categoria_C
            : calificacion < 16
                ? descuento(Categoria_C, 0.1)
                : calificacion < 18
                    ? descuento(Categoria_C, 0.12)
                    : descuento(Categoria_C, 0.15);
      case "D":
        return calificacion < 14
            ? Categoria_D
            : calificacion < 16
                ? descuento(Categoria_D, 0.1)
                : calificacion < 18
                    ? descuento(Categoria_D, 0.12)
                    : descuento(Categoria_D, 0.15);
      default:
        return 0.0; 
    }
  }(categoriaIngresada!, calificacion);

  print('Su pensión es: $pension');
}
