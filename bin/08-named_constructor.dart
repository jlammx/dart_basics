void main() {
  
  // Objeto Map
  final rawJson = {
    'nombre': 'Tony Stark',
    'poder': 'Dinero'
  };

// Instanciar un clase con objeto Map

  // Con el símbolo (!) dart confia en el código escrito y deja pasar la advertencia
  // final iroman = Heroe(nombre: rawJson['nombre']!, poder: rawJson['poder']!);
  // print(iroman);

  //final iroman = new Heroe.fromJson(rawJson);
  final iroman = Heroe.fromJson(rawJson);
  print(iroman);
  
  final dany = new Heroe(poder: 'Madre de Dragones', nombre: 'Daenerys');
  print(dany);
}


class Heroe{
  
  // String? nombre;
  // String? poder;

  // Constructor por nombre (con Null Safety)
/*   Heroe.fromJson( Map<String, String> json){
    this.nombre = json['nombre']!;
    this.poder = json['poder'] ?? 'No tiene poder';
  } */

  String nombre;
  String poder;
  
  // Constructor por nombre (sin Null Safety) con ejecución de código al momento de instanciar una clase
  Heroe.fromJson(Map<String, String> json) :
    this.nombre = json['nombre']!,
    this.poder = json['poder'] ?? 'No tiene poder';

  Heroe({
      required this.nombre, 
      required this.poder
  });

  @override
  String toString(){
    return 'Heroe: nombre: ${this.nombre}, poder: $poder';
  }
}