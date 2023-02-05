void main() {
  
  // Declaración de funciones
  final String nombre = 'Jorge';
  String? apellido;
  
  saludar();
  saludarWArgs(nombre);
  saludarWArgsOpc();
  saludarWArgsOOpc(nombre, apellido, 'Dracarys');
  saludarWOOrder(mensaje: 'Dracarys', nombre: nombre);
}

// Declaración de funcion básica
void saludar(){
  print('Hola mundo');
}

// Argumento posicional obligatorio
void saludarWArgs(String nombre){
  print('Hola $nombre');
}

// Argumento posicional opcional
void saludarWArgsOpc([String nombre = 'No name']){
  print('Hola $nombre');
}

// Argumento posicional obligatorio, NullSafety y opcional 
void saludarWArgsOOpc(String nombre, String? apellido, [String? mensaje]){
  print('Hola $nombre $apellido tu mensaje es $mensaje');
}
 
// Argumento posicional sin orden y con valores requeridos
void saludarWOOrder({
  String nombre = 'No name', 
  required String mensaje}){
  print('Hola $nombre tu mensaje es $mensaje');
}