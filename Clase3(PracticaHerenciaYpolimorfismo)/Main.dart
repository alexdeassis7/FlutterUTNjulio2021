import 'Entrenador.dart';
import 'Futbolista.dart';
import 'Masajista .dart';
import 'SeleccionFutbol.dart';

main(List<String> args) {
  /*nos hemos creado tres objetos de la clase SeleccionFutbol que adoptan una de las tres formas que pueden adaptar
  (Entrenador, Futbolista y Masajista)  y los metemos en un "List” de objetos de la clase “SeleccionFutbol”. 
  Ahora al ejecutar este fragmento de código vamos a ver que todos tienen el mismo comportamiento a la hora de "concentrarse()" y "viajar()",
   por tanto ejecutarán el método de la clase padre:
  
  List de objetos SeleccionFutbol. Idenpendientemente de la clase hija a la que pertenezca el objeto*/
  List<SeleccionFutbol> integrantes = new List<SeleccionFutbol>();

  SeleccionFutbol delBosque =
      new Entrenador(1, "Vicente", "Del Bosque", 60, 28489);
  SeleccionFutbol iniesta =
      new Futbolista(2, "Andres", "Iniesta", 29, 6, "Interior Derecho");
  SeleccionFutbol raulMartinez = new Masajista(
      3, "Raúl", "Martinez", 41, "Licenciado en Fisioterapia", 18);

  integrantes.add(delBosque);
  integrantes.add(iniesta);
  integrantes.add(raulMartinez);

  // CONCENTRACION
  print(
      "\n\nTodos los integrantes comienzan una concentracion. (Todos ejecutan el mismo método)");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido() + " -> ");
    integrante.concentrarse();

    print("-------------------");
  }

  // VIAJE
  print(
      "\n\nTodos los integrantes viajan para jugar un partido. (Todos ejecutan el mismo método)");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido() + " -> ");

    integrante.viajar();
    print("-------------------");
  }

  // Hasta el momento nada nuevo , pero ahora vamos a ver como cada uno de los integrantes
  // al lanzarse los mismos métodos ("entrenamiento()" y "partidoFutbol()") tienen un comportamiento diferente:

  // ENTRENAMIENTO
  print(
      "\n\nEntrenamiento: Todos los integrantes tienen su función en un entrenamiento (Especialización)");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido() + " -> ");
    integrante.entrenamiento();
  }

// PARTIDO DE FUTBOL
  print(
      "\n\nPartido de Fútbol: Todos los integrantes tienen su función en un partido (Especialización)");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido() + " -> ");
    integrante.partidoFutbol();
  }
  /*  En este caso vemos que todos los integrantes ejecutan el método "entrenamiento()" de forma diferente ya que 
  al ser este método abstracto en la clase padre, les forzamos a las clases hijas a que implementen ese método.
   Por el contrario al ejecutar el método "partidoFutbol()" vemos que el objeto de la clase Masajista utiliza el
    método implementado en la clase padre y en cambio los objetos de la clase Futbolista y Entrenador ejecutan sus
     método "re-implementados o especializados" que se volvieron a escribir en sus clases.*/

  /* Por último vamos a ver que cada uno de los objetos puede ejecutar métodos propios que solamente ellos 
     los tienen como son el caso de "planificarEntrenamiento(), entrevista() y  darMasaje()" que solo los 
     pueden ejecutar objetos de la clase Entrenador, Futbolista y Masajista respectivamente:*/

  // PLANIFICAR ENTRENAMIENTO
  print(
      "\n\nPlanificar Entrenamiento: Solo el entrenador tiene el método para planificar un entrenamiento:");
  print(delBosque.GetNombre() + " " + delBosque.GetApellido() + " -> ");
  (delBosque as Entrenador).planificarEntrenamiento();

// ENTREVISTA
  print(
      "\n\nEntrevista: Solo el futbolista tiene el método para dar una entrevista:");
  print(iniesta.GetNombre() + " " + iniesta.GetApellido() + " -> ");
  (iniesta as Futbolista).entrevista();

// MASAJE
  print("\n\nMasaje: Solo el masajista tiene el método para dar un masaje:");
  print(raulMartinez.GetNombre() + " " + raulMartinez.GetApellido() + " -> ");
  (raulMartinez as Masajista).darMasaje();
}
