import 'Entrenador.dart';
import 'Futbolista.dart';
import 'Masajista.dart';
import 'SeleccionFutbol.dart';

main(List<String> args) {
  List integrantes = [];

  SeleccionFutbol delBosque =
      new Entrenador(1, "vicente", "DEl Bosque", 61, 2558);

  SeleccionFutbol iniesta =
      new Futbolista(2, "Andres", "Iniesta", 29, 6, "DElantero derecho ");

  SeleccionFutbol raulMartinez =
      new Masajista(3, "Raul", "Martinez", 41, "fisioterapeuta", 15);

  integrantes.add(delBosque);

  integrantes.add(iniesta);

  integrantes.add(raulMartinez);

//concentracion

  print(
      "todos los integrantes comienzan una concentracion (todos ejecutan el mismo metodo )");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido());
    integrante.concentrarse();
    print("--------------------------------------------------");
  }

  print(
      "todos los integrantes viajan a jugar un partido  (todos ejecutan el mismo metodo )");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido());
    integrante.viajar();
    print("--------------------------------------------------");
  }

//PLANIFICAR ENTRENAMIENTO
  print("solo el entrenador tiene el metodo para planificar un entrenamiento ");

  print(delBosque.GetNombre() + " " + delBosque.GetApellido() + " ->");
  (delBosque as Entrenador).dirigirEntrenamiento();
  print("--------------------------------------------------");

  // Tarea :
  // invocar a los metodos faltantes de todas las clases
}
