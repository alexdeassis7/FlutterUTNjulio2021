//Clase padre Abstracta, NO SE PUEDE INSTANCIAR
abstract class SeleccionFutbol {
  String nombre;
  String apellido;
  int edad;
  int id;

  SeleccionFutbol(this.id, this.nombre, this.apellido, this.edad);
  //metodo abstracto => no se implementa en la clase padre PERO SI en las clases hijas
  void entrenamiento();

  void concentrarse() {
    print("Concentrarse (Clase Padre)");
  }

  void viajar() {
    print("viajar (Clase Padre)");
  }

  String GetNombre() => nombre;

  String GetApellido() => apellido;
}
