import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: _MyApp());
  }
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          _Carta(
            colorIcon: Colors.red,
            text: 'Favorite',
            icon: Icons.favorite,
          ),
          _Carta(
            colorIcon: Colors.blue,
            text: 'Alarm',
            icon: Icons.alarm,
          ),
          _Carta(
            colorIcon: Colors.yellow,
            text: 'Airport Shuttle',
            icon: Icons.airport_shuttle,
          ),
          _Carta(
            colorIcon: Colors.green,
            text: 'Done',
            icon: Icons.done,
          )
        ],
      ),
    );
  }
}

class _Carta extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color colorIcon;

  const _Carta(
      {required this.text, required this.icon, required this.colorIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 100,
      child: Card(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(text,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
          Icon(
            icon,
            size: 40,
            color: colorIcon,
          )
        ],
      )),
    );
  }
}
