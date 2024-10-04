import 'dart:io';

void main() {
  stdout.write('Ingresa el número de términos de Fibonacci que deseas: ');
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;
  print('Secuencia de Fibonacci:');

  for (int i = 0; i < n; i++) {
    print(a);
    int temp = a;
    a = b;
    b = temp + b;
  }
}
