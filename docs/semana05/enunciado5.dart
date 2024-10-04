import 'dart:io';

void main() {
  stdout.write('Ingresa el tamaño de las matrices (N): ');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matrizA = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matrizB = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> suma = List.generate(n, (_) => List.filled(n, 0));

  // Llenar matriz A
  print('Ingresa los elementos de la matriz A:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write('Elemento [$i][$j]: ');
      matrizA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Llenar matriz B
  print('Ingresa los elementos de la matriz B:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write('Elemento [$i][$j]: ');
      matrizB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Sumar matrices
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matrizA[i][j] + matrizB[i][j];
    }
  }

  // Mostrar la suma
  print('La suma de las matrices es:');
  for (var fila in suma) {
    print(fila);
  }
}
