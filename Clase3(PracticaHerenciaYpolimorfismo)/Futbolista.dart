import 'SeleccionFutbol.dart';

class Futbolista extends SeleccionFutbol {
  int dorsal;
  String demarcacion;

  Futbolista(int id, String nombre, String apellidos, int edad, int dorsal,
      String demarcacion)
      : super(id, nombre, apellidos, edad) {
    this.demarcacion = demarcacion;
    this.dorsal = dorsal;
  }

  // constructor, getter y setter

  void entrenamiento() {
    print("Realiza un entrenamiento (Clase Futbolista)");
  }

  void partidoFutbol() {
    print("Juega un Partido (Clase Futbolista)");
  }

  entrevista() {
    print("Da una Entrevista");
  }
}
