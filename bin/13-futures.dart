void main() {
  print('Antes de la petición');

  httpGet('https://api.nasa.com/aliens')
  .then((data){ // la data es el producto del future
    print(data.toUpperCase());
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