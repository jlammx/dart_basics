void main() {

  var numeroDeDia = 3;
  var weekDays = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado', 'domingo'];
  var dia = (numeroDeDia < weekDays.length) ? 'Hoy es : ${weekDays[numeroDeDia - 1]} ': 'dia incorrecto';

  print(dia);

}