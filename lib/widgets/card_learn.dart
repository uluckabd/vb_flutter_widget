import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ), // CircleBorder(), // StadiumBorder(),
            color: Theme.of(context).colorScheme.error,
            margin: EdgeInsets.all(10),
            child: SizedBox(
              height: 100,
              width: 200,
              child: Text(
                "ali",
                style: TextStyle(color: Colors.purple),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Card(
            color: Colors.white,

            margin: EdgeInsets.all(10),
            child: SizedBox(height: 100, width: 100),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: SizedBox(height: 100, width: 100),
          ),
          _customcard(
            child: Text(
              "ali",
              style: TextStyle(color: Colors.purple),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class projectmargins {
  static const cardmargin = EdgeInsets.all(10);
}

class _customcard extends StatelessWidget {
  final Widget child;

  const _customcard({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    final roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(10),
    );
    return Card(
      shape: roundedRectangleBorder, // CircleBorder(), // StadiumBorder(),
      color: Theme.of(context).colorScheme.error,
      margin: EdgeInsets.all(10),
      child: SizedBox(
        height: 100,
        width: 200,
        child: Text(
          "ali",
          style: TextStyle(color: Colors.purple),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
