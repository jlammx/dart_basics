void main() {
  
  final perro = new Perro();
  final gato = new Gato();

  perro.emitirSonido();
  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

// Función externa de las clases
// Todas las clases de animales tienen los mismos métodos que la clase abstracta Animal
void sonidoAnimal(Animal animal){
  animal.emitirSonido();
}

// Clase abstracta de Animal
abstract class Animal{
  int? patas;
  void emitirSonido();
}

// Clase extendida de Animal
class Perro implements Animal{

  int? patas;

// Método de declaración larga
  // void emitirSonido(){
  //   print('Guauuuuu');
  // }

// Método de declaración corta
  void emitirSonido() => print('Guauuuuu');

}

// Clase extendida de Animal
class Gato implements Animal{
  int? patas;
  int? cola;
  
  void emitirSonido() => print('Miaaauuuuuuu');
}