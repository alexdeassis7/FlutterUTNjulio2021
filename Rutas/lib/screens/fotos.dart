import 'package:flutter/material.dart';

class FotosPage extends StatelessWidget {
  static const String routeName = "/fotos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de fotos"),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //widget hijo 1
              Text(
                "Esta en la pagina de fotos \n\n presiona en el icono debajo para ir a la pagina de about",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),

              // widget hijo 2
              IconButton(
                icon: Icon(
                  Icons.add_location,
                  color: Colors.yellowAccent,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/about');
                },
                iconSize: 75.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
