void main() {
  double real = 1;

  //comvierto string a int :

  int uno = int.parse('1');

  //comvierto un String a un double
  double unoPuntoUno = double.parse('1.1');

  //comvierto un int a String
  String cadenaUno = uno.toString();

  //comvierto de double a String
  double pi = 3.1416;

  String cadenaPi = pi.toStringAsFixed(2);

  print(cadenaPi);

  //Tipos de datos String
  //alt + shift + f = IDENTADO de codigo
  var cadena1 = 'hola mundo ';
  var cadena2 = "hola mundo";

//usamos comillas dentro del String

  var cadena3 = 'yo dije : \'Hola MUNDO\'';

  print(cadena1);
  print(cadena2);
  print(cadena3);

  //concatenamos dos Strings

  var string1 = 'hola' ' Mundo concatenado';
  print(string1);

  //otra manera seria la siguiente
  var string2 = 'hola';
  var string3 = 'Mundo concatenado con operador aritmetico +';
  print(string2 + string3);

  //alt + control + N = ejecutamos el main

// y si queremos utilizar expresiones en String (Templates literals)
  var edad = 30;
  String frase = 'Mi edad es ${edad}';

  print(frase);

  //Evaluacion de Expresiones
  print('mi saludo inicial: ${string2 + string3}');
  print(' 2 + 2 = ${2 + 2}');

  //Booleanos
  bool existe = false;

  if (!existe) {
    print('existe es true');
  } else {
    print('existe es false');
  }
}
