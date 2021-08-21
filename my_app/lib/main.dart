import 'package:flutter/material.dart';

void main() {
  runApp(
    //el widget de material App es uno de los que se utiliza practicamente siempre en
    //toda app , tiene varias cosas que gestionan un poquito de toda nuestra app incluyendo las rutas con el navigator
    MaterialApp(
      //este titulo es el nombre de la app (no el que se ve en la pantalla)
      title: 'Mi primer app en flutter',
      //un theme es una configuracion generica para que la app tenga cierta consistencia  en gral y se vea
      //todo "parecido" , osea que con esto configuramos la apariencia de la app
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      //HOME : Pantalla principal
      //appbar : es la barra
      //Scaffold : es un andamio q, que es como un componente raiz o padre que nos deja poner botones , barras ,
      //notificaciones , seria como un activity de android
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo Flutter titulo'),
          //title: Icon(Icons.alarm),
        ),
        body: Center(
          child: Text('Hola Flutter App UTN'),
        ),
      ),
    ),
  );
}

//alineamiento 
// Align(
//   alignment : alignment.centerLeft,
//   child : Icon(Icons.access_alarm);
// )