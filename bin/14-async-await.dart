void main() async {

  print('Antes de la petición');

  final data = await httpGet('https://api.nasa.com/aliens');

  // print(await httpGet('https://api.nasa.com/aliens'));
  print(data);

/*   httpGet('https://api.nasa.com/aliens')
  .then((data){ // la data es el producto del future
    print(data.toUpperCase());
  }); */

  // Instancia de Future
  // print(getNombre('10'));

  // Mostrar función async síncrona 
  final nombre = await getNombre('10');
  print(nombre);

// Mostrar función async asiícrona
  // Version  corta
  //getNombre('10').then(print);

  //Version larga
  // getNombre('10').then( (data) => print(data));

  print('Fin del programa');
}

// Función síncrona 
Future<String> getNombre(String id) async{
  return '$id - Jorge';
}

// Función síncrona con tiempo de respuesta
/* Future<String> getNombre(String id) async{
  return Future.delayed(Duration(seconds: 5), (){
    return '$id - Jorge';
  }); 
} */

// Función Future
Future httpGet(String url){
  return Future.delayed(
    Duration(seconds: 3), () => 'Hola mundo - 3 segunos'
  );
}