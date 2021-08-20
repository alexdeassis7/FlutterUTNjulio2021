import 'SeleccionFutbol.dart';

class Entrenador extends SeleccionFutbol {
  int idFederacion;

  Entrenador(int id, String nombre, String apellidos, int edad, int idFede)
      : super(id, nombre, apellidos, edad) {
    this.idFederacion = idFede;
  }
  // constructor, getter y setter

  void entrenamiento() {
    print("Dirige un entrenamiento (Clase Entrenador)");
  }

  void partidoFutbol() {
    print("Dirige un Partido (Clase Entrenador)");
  }

  planificarEntrenamiento() {
    print("Planificar un Entrenamiento");
  }
}
