// Género animales
abstract class Animal{}

// Clasificación de animales
abstract class Mamiferos extends Animal{}
abstract class Aves extends Animal{}
abstract class Peces extends Animal{}

// Características que ciertos mamíferos, aves y peces podrían tener.
abstract class Volador{
  void volar() => print('volar');
}

abstract class Caminante{
  void caminar() => print('caminar');
}

abstract class Nadador{
  void nadar() => print('nadar');
}

// Creación de animal y asignación de clasificación y características por Animal
// Mamíferos
class Delfines extends Mamiferos with Nadador{}
class Murcielagos extends Mamiferos with Volador, Caminante{}
class Gatos extends Mamiferos with Caminante{}

// Aves
class Palomas extends Aves with Volador, Caminante{}
class Patos extends Aves with Volador, Caminante, Nadador{}

// Peces
class Tiburones extends Peces with Nadador{}
class PezVoladores extends Peces with Volador, Nadador{}


void main() {

  // Mamíferos
  final flipper = new Delfines();
  final grobat = new Murcielagos();
  final garfiul = new Gatos();

  print('El delfin puede: ');
  flipper.nadar();

  print('\nEl murcielado puede: ');
  grobat.volar();
  grobat.caminar();

  print('\nEl gato puede: ');
  garfiul.caminar();

  // Aves
  final paloman = new Palomas();
  final patodonald = new Patos();

  print('\nLa paloma puede: ');
  paloman.volar();
  paloman.caminar();

  print('\nEl pato puede: ');
  patodonald.volar();
  patodonald.caminar();
  patodonald.nadar();

  // Peces
  final tiburoncin = new Tiburones();
  final pezman = new PezVoladores();

  print('\nEl tiburón puede: ');
  tiburoncin.nadar();

  print('\nEl pez volador puede: ');
  pezman.nadar();
  pezman.volar();
}