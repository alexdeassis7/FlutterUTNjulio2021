import 'package:flutter/material.dart';
import 'package:whatsupp/whats.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercitacion Layouts',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {'/': (context) => WhatsChat()}, //El Widget de WhatsChat sera nuestra ruta Raís 
    );
  }
}
