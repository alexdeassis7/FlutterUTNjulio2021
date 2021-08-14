//MIXIN (mezclar) : pocos lenguajes poseen esta caracteristica por ejemplo Ruby lo tiene
//los mixin se usan en flutter para cositas como el SingleTickectProviderMixin  (esto es algo
//que nos permite a unb widgets marcar el tiempo para las animaciones )

abstract class Animal {
  //una clase abstracta es aquella de la cual no se podran instanciar objetos , y sera utilizada
  //exclusivamente para realizar mecanismos de Herencia
  String nombre;
  Animal(this.nombre);
}

//El mixin es una lista de campos (datos) y/o metodos
//un mixin basicamente es un extra que se le puede insertar a una clase

mixin PosicionMixin {
  //este mixin agrupa los datos de la posicion x, y junto
  //a los metodos que se necesitan para variar la posicion de un elemento en particular

  num _x = 0, _y = 0;

  //Getters
  num get x => _x;
  num get y => _y;

  //Setters
  set x(num x) => _x = x;
  set y(num y) => _y = y;

  //otro Getters que retorna una lista de "x" e "y"
  List<num> get pos =>
      [_x, _y]; //primer elemento en la lista es "x" y el segundo es "y"

  void mueve(int dx, dy) {
    _x += dx;
    _y += dy;
  }
}

//esta clase hereda de Animal , que pasa si quiero que el leon tenga otros campos y/o metodos
//que poseen otras clases/mixins pero que a lo mejor ni siquiera son un animal ? osea que no
//podemos poner en animal por que no todos los animales lo tienen y las gerarquias serian incompatibles
//aca en este ejemplo Leon hereda todo lo que tiene la clase abstracta "Animal" ya que un
//Leon es un animal ! y tambien posee lo propio del Mixin "PosicionMixin"
//se dice que "PosicionMixin" es como una herencia de segunda clase , y podremos tener la
//cantidad de mixins que necesitemos dentro de nuestra clase

class Leon extends Animal with PosicionMixin {
  Leon(String Nombre) : super(Nombre);
}

main(List<String> args) {
  //var animal = Animal("tigre"); NO PERMITIDO ya que animal es Abstract

  var leon = Leon("Alex"); //creo un ainstancia de la clase concreta Leon
  //accedemos al atributo nombre de la clase abstracta mediante un instancia de la clase concreta "Leon"
  print("Nombre del Leon :" + leon.nombre);

  leon.mueve(5, 3);

  print(leon.pos);

  leon.mueve(2, 2);

  print(leon.pos);
}
