void main() {

  // Summation (capital sigma) 
  // El sumatorio es un conjunto de sumas, el símbolo para el sumatorio se representa como Σ.
  // x₁ + x₂ + ... + xₙ
  // x₁ + x₂ + ... + xₙ = Σ xₘ

  int sum = 0,  m = 4, x = 3;

  for (int n=0; n <= m; n++) {
    sum += x*n;
  }

  print('La sumatoria de $m es igual a $sum');
}