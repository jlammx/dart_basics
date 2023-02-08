import 'dart:math' as math;

void main() {
  
  final cuadrado = new Cuadrado(5);

// Asignación mediante setter
  cuadrado.area = 100;

// Llamado a una propiedad
  // print('El area es: ${cuadrado.lado * cuadrado.lado}');

// Llamado a un método
  print('El area es: ${cuadrado.calculaArea().toStringAsFixed(2)}');
  print('El lado es: ${cuadrado.lado}');

// Llamado a un getter
  print('Area get: ${cuadrado.area}');

// Llamado a un setter
  // cuadrado.area = 20;
}

class Cuadrado {
  
  double lado; // Área =lado * lado

// Getters
  double get area{
    return this.lado * this.lado;
  }

// Setters
  set area(double valor){
    this.lado = math.sqrt(valor);
  }


// Construtor para recibir datos
  // Cuadrado(this.lado);
  Cuadrado(double lado):
    this.lado = lado;


  double calculaArea(){
    return this.lado * this.lado;
  }
}