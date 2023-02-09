void main() {
  
  final superman = new Heroe('Clack Kent');
  final luthor = new Villano('Lex Luthor');

  print(superman);
  print('Valentia: ${superman.valentia}\n');
  print(luthor);
  print('Maldad: ${luthor.maldad}');
}


abstract class Personaje{
  String? poder;
  String nombre;

  // Consntructor normal
  // Inicializando la propiedad
  Personaje(this.nombre);

  @override
  String toString(){
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje{

  int valentia = 100;
  
  // Llamado a constructor de la clase extendida
  Heroe(String nombre):super(nombre);
}

class Villano extends Personaje{
  
  int maldad = 50;

  Villano(String nombre): super(nombre);
}