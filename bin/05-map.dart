void main() {

  // Declaración de mapas
/*   Map persona = {
    'nombre': 'Jorge',
    'edad': 27,
    'soltero': false,
    true: false,
    1: 100,
    2: 500
  }; 

  print(persona);
  print(persona['edad']);
  */

  // Obliga a que todas las llaves sean de valor string y los valores sean dinámicos.
    Map<String, dynamic> persona = {
    'nombre': 'Jorge',
    'edad': 27,
    'soltero': false,
  };

  persona.addAll({'casa': 'Targaryen'});

  print(persona);
  print(persona['edad']);
  print(persona['nombre'] + persona['casa']);
  print('{ key: ${persona.keys}, value: ${persona.values} }');

}