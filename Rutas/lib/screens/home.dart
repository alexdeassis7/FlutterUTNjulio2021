import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            //centramos el contenido de la columna
            mainAxisAlignment: MainAxisAlignment.center,
            //agregamos widgets hijos a la columna
            children: <Widget>[
              //widget hijo 1
              Text(
                "Welcome to home Page \n\n clic en el icono de abajo para ir a la página About",
                style: TextStyle(
                  fontSize: 20.0,
                ),
                //alineamos el texto en el centro
                textAlign: TextAlign.center,
              ),
              //widget hijo 2
              IconButton(
                icon: Icon(
                  Icons.live_help,
                  color: Colors.blue,
                ),
                onPressed: () {
                  //usamos API Navigator para ir a una ruta en particular  en este caso vamos al '/about'
                  Navigator.of(context).pushNamed('/about');
                },
                //tamaño del icono
                iconSize: 70.0,
              ),

              //widget hijo 3
              Text(
                "Welcome to home Page \n\n clic en el icono de abajo para ir a la página de  Fotos",
                style: TextStyle(
                  fontSize: 20.0,
                ),
                //alineamos el texto en el centro
                textAlign: TextAlign.center,
              ),

              //widget hijo 4
              IconButton(
                icon: Icon(
                  Icons.image,
                  color: Colors.blue,
                ),
                onPressed: () {
                  //usamos API Navigator para ir a una ruta en particular  en este caso vamos al '/fotos'
                  Navigator.of(context).pushNamed('/fotos');
                },
                //tamaño del icono
                iconSize: 70.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
