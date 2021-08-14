//NO SE PUEDE HACER HERENCIA MULTIPLE EN DART , osea que no podemos realizar un extends de
//mas de una clase

abstract class Fruta {
  String nombre;

  Fruta(this.nombre);

  //metodos abstractos : metodos que no poseen CUERPO
  double get gramos;
  bool get femenina;

  void come() {
    //if else inline u operador ternario
    //((condicion) ? true : false)
    var determinante = (femenina ? "una" : "un");
    print("Te acabas de comer $determinante $nombre ($gramos gr.)");

    //analogia con un if else Clasico
    // if (femenina == true) {
    //   determinante = "una";
    // }else{
    //    determinante = "un";
    // }
  }
}

//Creamos Clases hijas que hereden el comportamiento de la clase Abstracta Fruta
//cuando heredamos de una clase que es abstracta y posee metodos abtractos nos vemos obligados
//ya sea a implementar dichos metodos (darle el cuerpo con las llaves "{}" o flecha => ) o en
//su defecto a comvertir a la clase hija es otra clase abstracta

class Manzana extends Fruta {
  //invocamos al constructor de la clase padre
  Manzana() : super("manzana");

//implementamos (overraideamos) los metodos Abstractos

  @override //el override es una metadata que lo que hace es chequear que estemos escribiendo bien el metodo
  //y que dicho metodo exista dentro de la clase padre en este caso en la clase Fruta
  bool get femenina => true;

  @override
  double get gramos => 250;
}

class Melon extends Fruta {
  Melon() : super("Melon");

  @override
  bool get femenina => false;

  @override
  double get gramos => 1500;

  void come() {
    print("Primero vamos abrir el melon , para luego poder comerlo");
    //invocamos al metodo de la clase padre desde la clase hijo
    super.come();
  }
}

class Arandano extends Fruta {
  Arandano() : super("Arandano");

  @override //utilizar el @Override no es obligatorio , pero si recomendable
  bool get femenina => false;

  @override
  double get gramos => 10;
}

main(List<String> args) {
  //instanciamos un objeto de la clase hija Manzana
  var m = Manzana();
  m.come();

  //instanciamos otro objeto de la clase hija Melon
  var melon = Melon();
  melon.come();

  var frutas = [
    for (var i = 0; i < 3; i++) Manzana(),
    Melon(),
    for (var i = 0; i < 10; i++) Arandano()
  ];

//for each
  for (var frutaAux in frutas) {
    frutaAux.come();
  }

  print("#################  Mezclamos con shuffle #################");
  frutas.shuffle();

  for (var f in frutas) {
    f.come();
  }
}
