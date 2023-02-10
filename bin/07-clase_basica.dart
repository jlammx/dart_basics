void main() {
  
  // Declaración de una clase
  // final Heroe wolverine = new Heroe();
  // final wolverine = new Heroe('Daenery Targaryen', 'Dracarys');
  // final wolverine = Heroe();
  final dany = new Heroe(poder: 'Madre de Dragones', nombre: 'Daenerys');

  // wolverine.nombre = 'Logan';
  // wolverine.poder = 'Regeneración';

  print(dany);
  print(dany.nombre);
  print(dany.poder);
}


class Heroe{

  // String? nombre;
  // String? poder;
  
  String nombre;
  String poder;
  
// Constructor (utiliza el mismo nombre de la clase)

  // Forma incorrecta de un constructor en Dart
/*   Heroe(String pNombre, String pPoder){
    this.nombre = pNombre;
    this.poder = pPoder;
  } */

  // Forma correcta de un constructor en Dart
  // Heroe(this.nombre, this.poder);

  // Enviar un constructor con argumentos por nombre (obligatoriamente)
  Heroe({
      required this.nombre, 
      required this.poder
  });
  
  // Mostrar las propiedades de la clase
  @override
  String toString(){
    return '*Heroe* Nombre: ${this.nombre}, Poder: $poder';
  }

}