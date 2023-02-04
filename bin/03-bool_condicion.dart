void main() {

// Booleanos y condiciones
  // bool isActive = true;

  // NullSafety (especificarle a una variable que si puede tener valores nulos)
  bool? isActive = null;
  
  if(isActive == null){
    print('isActive es null');
  } else {
    print('isActive NO es null es: $isActive');
  }
  
}