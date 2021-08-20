abstract class SeleccionFutbol {
  String nombre;
  int id;
  String apellidos;
  int edad;

  SeleccionFutbol(this.id, this.nombre, this.apellidos, this.edad);
  // metodos abtractos=> no se implementa en
  // la clase abstracta pero si en la clases hijas

  void entrenamiento();

  void concentrarse() {
    print("Concentrarse (Clase Padre)");
  }

  void viajar() {
    print("Viajar (Clase Padre)");
  }

  void partidoFutbol() {
    print("Asiste al Partido de Fútbol (Clase Padre)");
  }

  String GetNombre() => nombre;
  String GetApellido() => apellidos;
}
