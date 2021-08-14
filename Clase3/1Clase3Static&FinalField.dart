class Color {
  double r, g, b;

//cuando un atributo es estatico PERTENECE A LA CLASE Y NO A LAS INSTANCIAS
  static String h = 'Soy un atributo estatico ';

//constructor
  Color(this.r, this.g, this.b);

//Atributo Statico y final , lo creamos de esta manera para que ademas no se pueda modificar !
  static final Color rojo = Color(255, 50, 30);
  static final Color negro = Color(10, 10, 10);

//metodo estatico que mezcla colores
  static Color mezcla(Color a, Color b) =>
      Color((a.r + b.r) / 2, (a.g + b.g) / 2, (a.b + b.b) / 2);
}

main(List<String> args) {
  var objetoA = Color(100, 150, 213);
  var objetoB = Color(100, 140, 213);

  print("este es el estado de los atributos del objetoA");
  print(objetoA.b);
  print(objetoA.r);
  print(objetoA.g);

  print("este es el estado de los atributos del objetoB");
  print(objetoB.b);
  print(objetoB.r);
  print(objetoB.g);

  print(
      "este es el atributo statico y lo accedo mediante el nombre de la clase");
  print(Color.h);

  Color.h = 'modifique el atributo que es estatico y pertenece a la clase';
  print(Color.h);

  var colorMezclado = Color.mezcla(Color.rojo, Color.negro);

  print("este es el color que se genero mezclando el rojo y el negro ");

  print(colorMezclado.b);

  print(colorMezclado.r);

  print(colorMezclado.g);
}
