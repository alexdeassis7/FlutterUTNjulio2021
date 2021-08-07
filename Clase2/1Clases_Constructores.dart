//defino una clase : plantilla para crear objetos
class Hora {
  //defino atributos de mi clase : definen las carateristicas de los objetos
  int h = 0, m = 0, s = 0;
}

class Reloj {
  //atributos de mi clase
  int hora = 0, minuto = 0, segundo = 0;

//1 Metodo Constructor Clasico: inicializa nuestro objeto
  // Reloj(int hora, int minuto, int segundo) {
  //   this.hora = hora;
  //   this.minuto = minuto;
  //   this.segundo = segundo;
  // }
//2 Metodo Constructor abreviado ,esto se usa MUCHO EN FLUTTER
  //Reloj(this.hora, this.minuto, this.segundo);

//3 Metodo Constructor con parametros nombrados , esto se usa mucho en flutter el 90% de los widgets utilizan estos constructores ya que
//para configurar un Widget suelen tener que enviarse entre 5 y 15 parametros nombrados
  Reloj({required this.hora, required this.minuto, required this.segundo});

//no se puede tener mas de un constructor con el mismo nombre , DART no permite la sobrecarga de metodo constructor,
// es por una cuestion de claridad de codigo
//pero para suplir esa necesidad podemos utilizar lo siguiente (el punto):
  Reloj.nombrado(
      {required this.hora, required this.minuto, required this.segundo});

  Reloj.a_cero() {
    this.hora = 0;
    this.minuto = 0;
    this.segundo = 0;
  }
}

void main() {
  //creamos un objeto de la manera "Clasica"  y lo guardamos en la variable 'a'
  var a = new Hora();
  print(a); //vemos a que clase pertenece la instancia

  //despues la gente de flutter se dio cuenta que utilizamos muchos objetos y desde dart modificaron la
  //sintaxis permitiendo crear instancias de una manera diferente (sin el new)
  //ej :
  var b = Hora();
  print(b);

  print('Objeto Hora B :  ${b.h} : ${b.m} : ${b.s} ');

  print('Objeto Hora A :  ${a.h} : ${a.m} : ${a.s} ');

  //como acceder a un atributo y modificarlo :
  a.h = 11;
  a.m = 16;
  a.s = 59;
  print('Objeto Hora A :  ${a.h} : ${a.m} : ${a.s} ');

  //construimos un objeto de la clase Reloj invocando al Metodo Constructor 1 y 2
  // var b1 = Reloj(16, 59, 58);

  //construimos un objeto de la clase Reloj invocando al Metodo Constructor 3
  var b2 = Reloj(minuto: 59, hora: 15, segundo: 00);

  print('Reloj b2: ${b2.hora} : ${b2.minuto} : ${b2.segundo}');

  var b3 = Reloj.a_cero();
  print('Reloj b3: ${b3.hora} : ${b3.minuto} : ${b3.segundo}');
}
