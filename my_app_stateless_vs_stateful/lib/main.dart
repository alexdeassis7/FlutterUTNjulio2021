import 'package:flutter/material.dart';


///EJEMPLO DE STATEFUL 
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

class PlayerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PlayerWidgetState();
  }
}

class _PlayerWidgetState extends State<PlayerWidget> {
  //atributo que nos indicar si estamos en pay o pause
  bool _isPlaying = false;
  //metodo encargado de cambiar el estado
  void _playerClick() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: _isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
            iconSize: 150.0,
            onPressed: () {
              _playerClick();
            },
          ),
          Text(
            _isPlaying ? 'Pause' : 'Play',
            // (condicion) ? true : false ;
            style: new TextStyle(fontSize: 24.0),
          ),
        ],
      ),
    );
  }
}
