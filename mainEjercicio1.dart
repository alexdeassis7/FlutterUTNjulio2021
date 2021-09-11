/*1) Crear un StatefulWidget que posea un boton rojo y un mensaje que muestre
una palabra por pantalla , al presionar el boton debera cambiar el mensaje
mostrado en la pantalla.*/
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MybuttonState();
  }
}

class MybuttonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['Flutter', 'is', 'cool', "and", "awesome!"];
  String displayedString = "Hola Mundo";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget Ejercicio 1"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                displayedString,
                style: TextStyle(fontSize: 45.0),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
              ),
              RaisedButton(
                child: Text(
                  "Presioname",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                color: Colors.red,
                onPressed: onPressOfButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainAxisAlignMent {}
