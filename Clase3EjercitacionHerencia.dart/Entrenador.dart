import 'SeleccionFutbol.dart';

class Entrenador extends SeleccionFutbol {
  int idFederacion;

  Entrenador(
    int id,
    String nombre,
    String apellido,
    int edad,
    this.idFederacion,
  ) : super(id, nombre, apellido, edad) {}

  @override
  void entrenamiento() {
    print("Dirige un entrenamiento (Clase entrenador )");
  }

  void dirigirPartido() {
    print("Dirige un partido de Futbol (Clase entrenador )");
  }

  void dirigirEntrenamiento() {
    print("Dirige un Entrenamiento de Futbol (Clase entrenador )");
  }
}
