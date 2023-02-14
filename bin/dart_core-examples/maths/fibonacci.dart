// Fibonacci

// 1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597

// F1 -> 1
// F2 -> 1
// F3 -> 2
// F4 -> 3
// F5 -> 5
// F6 -> 8
// F7 -> 13
// F8 -> 21


void main() {

  final int n = 8;

  print('Fibonacci($n) = ${fibonacci(n)} (Recursión)\n');
  // print('Fibonacci de ($n) = ${fibonacciIf(n)}');
  print('Fibonacci de ($n) = ${fibonacciBest(n)} (Iterativo)');
}

// Calcula el n-ésimo número de Fibonacci con operator ternario. (Con Recursividad)
int fibonacci(int n){
  return n < 2 ? n : (fibonacci(n - 1 ) + fibonacci(n - 2));
}


// Calcula el n-ésimo número de Fibonacci con if normal (Con Recursividad)
int fibonacciIf(int n){

  if(n < 2){
    return n;
  } else {
    return (fibonacciIf(n - 1) + fibonacciIf(n - 2));
  }
}

// Calcula y muestra la lista de la sucesión Fibonacci. (Sin recrusividad Iterativo)
int fibonacciBest(int n){

  int siguiente = 1, actual = 0, temporal = 0;
  String results ='0';


  for (int i = 1; i <= n; i++) {
    temporal = actual;
    actual = siguiente;
    siguiente = siguiente + temporal;

     // Si no quieres imprimirla, comenta la siguiente línea:
    results += ', $actual';
    // print('$actual, ');
  }
  
  print('$results\n');
  return actual;
}