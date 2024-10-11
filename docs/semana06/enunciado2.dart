import 'dart:io';

void main() {
  
  print("Ingrese los minutos de tardanza:");
  String? minutosInput = stdin.readLineSync();
  int minutosTardanza = int.parse(minutosInput!);

  print("Ingrese el número de observaciones:");
  String? observacionesInput = stdin.readLineSync();
  int observaciones = int.parse(observacionesInput!);

  int puntualidad = calcularPuntajePuntualidad(minutosTardanza);
  int rendimiento = calcularPuntajeRendimiento(observaciones);

  int puntajeTotal = puntualidad + rendimiento;

  double bonificacion = calcularBonificacion(puntajeTotal);

  // Imprimir los resultados
  print('Puntaje por puntualidad: $puntualidad');
  print('Puntaje por rendimiento: $rendimiento');
  print('Puntaje total: $puntajeTotal');
  print('Bonificación: S/. $bonificacion');
}

int calcularPuntajePuntualidad(int minutos) {
  if (minutos == 0) {
    return 10;
  } else if (minutos <= 2) {
    return 8;
  } else if (minutos <= 5) {
    return 6;
  } else if (minutos <= 9) {
    return 4;
  } else {
    return 0;
  }
}

int calcularPuntajeRendimiento(int observaciones) {
  switch (observaciones) {
    case 0:
      return 10;
    case 1:
      return 8;
    case 2:
      return 5;
    case 3:
      return 1;
    default:
      return 0;
  }
}

double calcularBonificacion(int puntajeTotal) {
  if (puntajeTotal < 11) {
    return puntajeTotal * 2.5;
  } else if (puntajeTotal <= 13) {
    return puntajeTotal * 5.0;
  } else if (puntajeTotal <= 16) {
    return puntajeTotal * 7.5;
  } else if (puntajeTotal <= 19) {
    return puntajeTotal * 10.0;
  } else if (puntajeTotal == 20) {
    return puntajeTotal * 12.5;
  } else {
    return 0.0;
  }
}
