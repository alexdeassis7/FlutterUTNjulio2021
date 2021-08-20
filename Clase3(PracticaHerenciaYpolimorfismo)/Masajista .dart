import 'SeleccionFutbol.dart';

class Masajista extends SeleccionFutbol {
  String titulacion;
  int aniosExperiencia;

  // constructor, getter y setter

  Masajista(int id, String nombre, String apellidos, int edad,
      String titulacion, int aniosExperiencia)
      : super(id, nombre, apellidos, edad) {
    this.titulacion = titulacion;
    this.aniosExperiencia = aniosExperiencia;
  }

  void entrenamiento() {
    print("Da asistencia en el entrenamiento (Clase Masajista)");
  }

  void darMasaje() {
    print("Da un Masaje");
  }
}
