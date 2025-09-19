import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});

  final Iconsizes iconsize = Iconsizes();
  final Iconcolors iconcolor = Iconcolors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome icon")),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconcolor.froly,
              size: iconsize.iconsmall,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(
                context,
              ).colorScheme.error, // doğru dinamik kullanım bu şekilde olmalı
              size: iconsize.iconsmall,
            ),
          ),
        ],
      ),
    );
  }
}

class Iconsizes {
  final double iconsmall = 40;
}

class Iconcolors {
  final Color froly = const Color.fromARGB(255, 235, 116, 107);
}
