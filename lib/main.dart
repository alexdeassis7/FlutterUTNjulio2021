/*Enunciado Ejercicio 2 :

2)	Crear un  StatelessWidget que posea cuatro Card widgets , cada Card debe mostrar una palabra y un Icon 
Card 1 -> Palabra : “Favorite” , Icon : “favorite” 
Card 2 -> Palabra : “Alarm” , Icon : “alarm” 
Card 3 -> Palabra : “Airport Shuttle” , Icon : “airport_shuttle” 
Card 4 -> Palabra : “Done” , Icon : “done” 
*/
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(primaryColor: Colors.green),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //declaramos constantes para definir el tamaño del texto y del icono
    final double myTextSize = 30.0;

    final double myIconSize = 42.0;

    final TextStyle myTextStyle = TextStyle(
      color: Colors.grey,
      fontSize: myTextSize,
    );

    var column = Column(
      //Makes the cards stretch in horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
//Setup the card
        MyCard(
          //setup the text
          title: Text(
            "Favorito",
            style: myTextStyle,
          ),
          //setup the icon
          icon: Icon(
            Icons.favorite,
            size: myIconSize,
            color: Colors.red,
          ),
        ),
        MyCard(
          //setup the text
          title: Text(
            "Alarm",
            style: myTextStyle,
          ),
          //setup the icon
          icon: Icon(
            Icons.alarm,
            size: myIconSize,
            color: Colors.blue,
          ),
        ),
        MyCard(
          //setup the text
          title: Text(
            "Airport Shuttle",
            style: myTextStyle,
          ),
          //setup the icon
          icon: Icon(
            Icons.airport_shuttle,
            size: myIconSize,
            color: Colors.yellow,
          ),
        ),
        MyCard(
          //setup the text
          title: Text(
            "Done",
            style: myTextStyle,
          ),
          //setup the icon
          icon: Icon(
            Icons.done,
            size: myIconSize,
            color: Colors.green,
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget!"),
      ),
      body: Container(
        //set the padding in the main containner
        padding: EdgeInsets.only(bottom: 2.0),
        child: Center(
          child: column,
        ),
      ),
    );
  }
}

//creamos un stateless widget Reusable
class MyCard extends StatelessWidget {
  //atributos de la clase
  final Widget icon;
  final Widget title;
  //contructor de la clase
  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
}
