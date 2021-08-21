// importo material del flutter
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(ScreenUno());
}
//creamos un StatelessWidget y hacemos una sobreescritura de uno de sus metodos
//atajo de teclado para crear un Stateless : stless + ctrl + space

//decimos que un widget es un stateless widhget si es estatico! , es decir  si no va a sufrir ningun cambio .
//Por ejemplo un texto , un icono.. en principio son widgets que van a ser pintados en la pantalla
//y asi se van a quedar , sin que ninguna accion del user los altere
class ScreenUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo flutter Stateless Widget',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.account_circle),
        ),
        body: Center(
          //el container es como un div en lenguaje html
          child: Container(
            padding: EdgeInsets.all(20), //padding de todos los lados
            //otro constructor para poner padding en algun borde , pero aca hace falta poner en todos
            //padding: EdgeInsets.fromLTRB(200, 0, 20, 20), //left top rigth bottom
            //otro constructor mas para poder poner el padding en alguno de los lados en particular , aca no hace falta poner
            //todos los lados
            //padding: EdgeInsets.only(left: 65)

            child: Text(
              'hola UTN' * 3,
              style: TextStyle(fontSize: 25),
            ),
            width: 200,
            height: 80,
            // color: Color.fromARGB(255, 255, 255, 0),
            //color: Colors.red,//Colors tiene todos los colores static predefinidos
            //decoration: FlutterLogoDecoration(),//no se puede usar color y decoracion a la misma vez , estos widgets son antagonicos entre si !
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                //Border extiende de BoxBorder , si uso el all es un constructor que genera un mini widget de border
                border: Border.all(
                  color: Colors.brown,
                  width: 6,
                ),
                //usamos bordes de containers
                //borderRadius: BorderRadius.circular(500),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  bottomLeft: Radius.circular(15),
                ),
                //Le damos sombra con box shadow
                boxShadow: [
                  //color de la sobra
                  BoxShadow(
                    color: Colors.black45,
                    //si pongo un offset parecera que el boton "flotara" en al pantalla
                    offset: Offset(4, 8),
                    //utilizamos un difuminado
                    blurRadius: 8,
                  )
                ]),
            //esto nos permite manejar el container y definir minimo y maximos del container
            //nos da un poco mas de control que el width y el heith normal
            constraints: BoxConstraints(
              maxHeight: 100,
              maxWidth: 1000,
            ),
          ),
        ),
      ),
    );
  }
}
