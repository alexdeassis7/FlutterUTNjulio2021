import 'SeleccionFutbol.dart';

class Futbolista extends SeleccionFutbol {
  int dorsal;
  String demarcacion;

  Futbolista(int id, String nombre, String apellido, int edad, this.dorsal,
      this.demarcacion)
      : super(id, nombre, apellido, edad) {}

  @override
  void entrenamiento() {
    print("Realiza un entrenamiento (Clase Futbolista)");
  }

  void jugarPartido() {
    print("Juega un Partido (Clase Futbolista)");
  }

  void entrenar() {
    print("Entrena fuerte (Clase Futbolista)");
  }
}
