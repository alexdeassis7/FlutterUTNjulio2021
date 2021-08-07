class Persona {
  //atributos de la clase
  String nombre, apellido;

  Persona(this.nombre, this.apellido);

//defino un metodo de la clase de la manera "clasica"
  String nombreCompleto() {
    return '$nombre $apellido';
  }

////defino un metodo de la clase de la manera abreviada

  String nombreCompletoAbreviatura() => '$nombre $apellido';

//utilizamos metodo toString para conocer el estado de la clase
  String toString() => 'Persona("$nombre $apellido")';
}

main(List<String> args) {
  var p = Persona('Karina', 'Ciapuscio');
  print(p.nombreCompleto());

  print(p.nombreCompletoAbreviatura());

  print(p);
}
