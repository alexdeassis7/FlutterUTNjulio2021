import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Tanto Colum como Row son widgets "multihijos"  , si solamente
      // posicionarás un elemento , deberías considerar utilizar otro Widget como
      // Align o Center

      // Colum y Row  poseen las mismas propiedades , asi que en los siguientes Ejmplos
      // vamos a trabajar com ambos widgets a la vez
      // List hijos = [
      //   WidgetHijo1(),
      //   WidgetHijo2(),
      //   WidgetHijo3(),

      // ]
// Row(children: <Widget> hijos,);
//       Column(children: <Widget> hijos,);
      body: Container(
        color: Colors.green[400],
        child: Column(
           verticalDirection: VerticalDirection.up,
          /**o Row */
          //                        main Axis Alignment
          // mainAxisAlignment: MainAxisAlignment.start = posiciona los hijos lo mas cerca posible del eje principal,
          // Es el valor por default , osea que podes omitir su especificacion
          // mainAxisAlignment: MainAxisAlignment.end = Posiciona los hijos lo más cerca posible del final del eje principal
          //mainAxisAlignment: MainAxisAlignment.center = Posiciona los hijos en el centro del eje principal
          // mainAxisAlignment: MainAxisAlignment.spaceBetween = Posiciona los hijos en el espacio en blanco disponible de forma uniforme entre los widgets hijos
          // mainAxisAlignment: MainAxisAlignment.spaceAround = Posiciona el espacio en blanco disponible de forma uniforme entre los widget hijo
          // Asi como la mitad de esa unidad de espacio antes y despues del primer y ultimo widget
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly, = posiciona el espacio en blanco disponible de forma uniforme estre los widget hijos , asi como antes y despues del primer y ultimo widget

          //                                      main Axis Size
          // mainAxisSize:MainAxisSize.min = Minimiza la cantidad de espacio libre en el eje principla , es el valor por default
          //mainAxisSize: MainAxisSize.max, = Maximiza la cantidad de espacio libre en el eje principal

          //                                     cross Axis Alignment   => con esta propiedad podemos definir como deberian posicionar los hijos a los largo del eje TRANSVERSAl
          //crossAxisAlignment: CrossAxisAlignment.start : alinea los hijos con el comienzo del eje Transversal,
          // crossAxisAlignment: CrossAxisAlignment.end : alinea los hijos con el final del eje Transversal,
          // crossAxisAlignment: CrossAxisAlignment.center : alinea los hijos de tal forma que sus centro se alineen con el centro del eje transversal 
          // crossAxisAlignment: CrossAxisAlignment.stretch : con esta propiedad lo hijos toman todo el espacio disponible en el eje transversal

          children: <Widget>[
            Column(
                                //textDirection
              // textDirection: TextDirection.rtl,/**o TextDirection.rtl  : pa lenguajes de derecha a izquierda como el Árabe o Hebreo*/
              // verticalDirection:  ,=> especifica la direccion en la que los elementos fluyen verticalmente 
              // verticalDirection: VerticalDirection.down , los elementos comienzan en la parte superior y empiezan a apilarse hacia la parte 
              //                                             inferior , este es el valor por default
              //verticalDirection: VerticalDirection.up, => los elementos comienzan en la parte inferior y empiezan a apilarse hacia la parte 
              //                                             superior , 
             
              children: [
                Text(
                  'text Direction 1',
                  style: TextStyle(fontSize: 22.0),
                ),
              
                Text(
                  'text Direction 2',
                  style: TextStyle(fontSize: 22.0),
                )
              ],
            )
            // Icon(
            //   Icons.sentiment_satisfied,
            //   color: Colors.black,
            //   size: 50,
            // ),
            // Icon(
            //   Icons.sentiment_satisfied,
            //   color: Colors.black,
            //   size: 100,
            // ),
            // Icon(
            //   Icons.sentiment_satisfied,
            //   color: Colors.black,
            //   size: 50,
            // ),
          ],
        ),
        
      ),
    );
  }
}
