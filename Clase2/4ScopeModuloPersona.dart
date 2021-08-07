//importamos un modulo
import 'Persona.dart';

main(List<String> args) {
  var p = new Persona('Ivo', 'Dursi');

//ESTO NO SE PUEDE REALIZAR YA QUE LOS ATRIBUTOS NOMBRE Y APELLIDO SON PRIVATE
  // p._nombre = "Santi";
  // p._apellido = "Ciapuscio";

  p.muestraPersona(p);

  print('accedemos a los atributos encapsulados ');
  print(p.getNombre());
  print(p.getApellido());

  var p2 = Persona('Hector', 'lavoe');
  p2.muestraPersona(p2);

  print('modificamos los atributos mediante los setters');
  p2.setNombre("Karina");
  p2.setApellido("Mastbaum");
  p2.muestraPersona(p2);

  var p3 = Persona('Jose', 'macri');
  p3.muestraPersona(p3);
  //utilizamos los getters y setters con nombres Ficticios
  print('utilizamos los getters con nombre ficticio');
  print(p3.nombre);
  print(p3.apellido);

  print('utilizamos los setters con nombre ficticio');
  p3.nombre = "Mauricio";
  p3.apellido = "Martinez";

  print(p3.nombreCompleto());
  print(p3.nameCompleto);
}
