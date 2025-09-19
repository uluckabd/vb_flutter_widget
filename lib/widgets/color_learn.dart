import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(color: colorsitems().sulu, child: Text("data")),
    );
  }
}

class colorsitems {
  final Color porche = const Color.fromARGB(255, 92, 26, 21);
  final Color sulu = Color.fromRGBO(223, 255, 41, 1);
}
