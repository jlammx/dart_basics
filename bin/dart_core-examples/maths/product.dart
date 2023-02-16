void main() {
  
  // Product (capital pi) Π
  // El productorio es un sumatorio pero en lugar de sumar, multiplica, el símbolo para el producto se representa como Π.

  int prod = 1, m = 4, x = 3;

  for (int n=1; n <= m; n++) {
    prod *= x*n;
  }

  print('El producto de $m es igual a $prod');
}