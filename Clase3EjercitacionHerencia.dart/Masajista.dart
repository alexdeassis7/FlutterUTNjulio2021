import 'SeleccionFutbol.dart';

class Masajista extends SeleccionFutbol {
  String titulacion;
  int aniosExperiencia;

  Masajista(int id, String nombre, String apellido, int edad, this.titulacion,
      this.aniosExperiencia)
      : super(id, nombre, apellido, edad) {}

  @override
  void entrenamiento() {
    print("Da asistencia ene el entrenamiento (Clase Masajista)");
  }

  void darMasaje() {
    print("Da un masaje (Clase Masajista)");
  }
}
