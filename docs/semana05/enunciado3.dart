import 'dart:io';
import 'dart:math';

void main() {
  int n = 100;
  BigInt factorial = BigInt.one;

  for (int i = 1; i <= n; i++) {
    factorial *= BigInt.from(i);
  }

  print('El factorial de $n es: $factorial');
}
