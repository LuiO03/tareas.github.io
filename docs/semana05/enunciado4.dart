import 'dart:io';

void main() {
  stdout.write('Ingresa un número entero: ');
  int numero = int.parse(stdin.readLineSync()!);
  int numeroInvertido = 0;

  while (numero != 0) {
    int digito = numero % 10;
    numeroInvertido = numeroInvertido * 10 + digito;
    numero ~/= 10;
  }

  print('El número invertido es: $numeroInvertido');
}
