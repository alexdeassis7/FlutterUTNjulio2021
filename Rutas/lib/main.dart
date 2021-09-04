import 'package:flutter/material.dart';
import 'package:rutas/screens/about.dart';
import 'package:rutas/screens/fotos.dart';
import 'package:rutas/screens/home.dart';

void main() {
  runApp(MaterialApp(
    //'home' implicitamente es seteada como la ruta raiz '/'
    home: HomePage() ,
    routes: <String, WidgetBuilder>{
      //seteamos los nombres de las rutas 
      //'nombreDeRuta' : BuildContext
      FotosPage.routeName : (BuildContext context ) => FotosPage(),
      //Tarea realizar la vista de About que desde esta vista podamos ir a la pagina de home
      AboutPage.routeName : (BuildContext context ) => AboutPage(),
    },
  ));
}