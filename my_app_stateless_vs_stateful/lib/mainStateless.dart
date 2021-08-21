import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'el titulo de mi app',
      home: Scaffold(
        body: Center(
          child: PlayerWidget(),
        ),
      ),
    );
  }
}

// cuando creamos una clase de stateWidget estamos obligados a implementar el método build , este
// metodo es el encargado de retornar lo que se va a pintar , es devir , un widget
class PlayerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.play_arrow),
            iconSize: 150.0,
            onPressed: () {},
          ),
          Text(
            'Play',
            style: new TextStyle(fontSize: 24.0),
          ),
        ],
      ),
    );
  }
}
