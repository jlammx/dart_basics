void main() {
  print('Antes de la petición');

  httpGet('https://api.nasa.com/aliens')
  .then((data){ // la data es el producto del future
    print(data.toUpperCase());
  });

  // Cachando un error
  httpGet2('https://fernando-herrera.com/cursos')
    .then( 
      (value){
        print( value );
      })
    .catchError( (err) {
    print('Error: $err');
  });

  print('Fin del programa');
}

// Creación de una función con future (tarea asíncrona)
Future<String> httpGet( String url){
  return Future.delayed(Duration(seconds: 3), (){ //Retorna el future
    return 'Hola mundo - 3 segunos'; //El producto del future
  });
}

// Lambda Function (Versión corta)
/* Future httpGet2(String url){
  return Future.delayed(
    Duration(seconds: 3), () => 'Hola mundo - 3 segunos'
  );
} */


// Cachando un error
Future<String> httpGet2( String url ){
  
  return Future.delayed( const Duration(seconds: 1), () {
    
    throw 'Error en la petición http';
    
//     return 'Respuesta de la petición http';
    
  });
  
}