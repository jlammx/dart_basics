void main() {
  
  // Declaración de lista
  // List numeros = [];

  // Declaración de lista dinamica (permite cualquier tipo de dato)
  // List numeros = [1,2,3,4,5,6,7,8,9,10];
  // numeros.add('Targaryen');
  // print(numeros);

  // Declaración de lista con tipo de dato (solo permite el tipo de dato especificado)
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  numeros.add(11);

  print(numeros);

  // Método estático (es una función que se puede llamar sin crear una instancia de la misma) 
  final masNumeros = List.generate(100, (index) => 10); // 100 elementos con valor de 10
  print('----------');
  print(masNumeros);
  
  final masNumeros2 = List.generate(100, (int index) => index); // 100 elementos con valor 0..99
  print('----------');
  print(masNumeros2);

}