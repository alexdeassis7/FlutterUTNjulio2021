void main() {
  var p1 = Punto2D.cero(1, 5);
  print('(${p1.x},${p1.y})');

  print('(${p1.xFinal},${p1.yFinal})');

//ESTO NOS DARA UN ERROOORRRR!!!!!!
  // p1.xFinal = 102;
}

class Punto2D {
  double x, y;
  final xFinal, yFinal;

//Constructor con listas de inicializacion
  Punto2D.cero(this.xFinal, this.yFinal)
      : x = 0,
        y = 0 {}

//para que este constructor funcione se debe inicializar los atributos (double x = 0 ,y =0 )
  // Punto2D.cero()
  //     : xFinal = 0,
  //       yFinal = 0;
}
