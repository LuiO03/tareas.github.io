import 'dart:io';

void main() {
  print('Números perfectos entre 1 y 10,000:');

  for (int numero = 1; numero <= 10000; numero++) {
    int sumaDivisores = 0;

    for (int divisor = 1; divisor < numero; divisor++) {
      if (numero % divisor == 0) {
        sumaDivisores += divisor;
      }
    }

    if (sumaDivisores == numero) {
      print(numero);
    }
  }
}
