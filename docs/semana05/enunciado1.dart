import 'dart:io';

bool esPrimo(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write('Ingresa el primer número: ');
  int inicio = int.parse(stdin.readLineSync()!);
  stdout.write('Ingresa el segundo número: ');
  int fin = int.parse(stdin.readLineSync()!);
  
  int sumaPrimos = 0;

  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumaPrimos += i;
    }
  }

  print('La suma de los números primos entre $inicio y $fin es: $sumaPrimos');
}
