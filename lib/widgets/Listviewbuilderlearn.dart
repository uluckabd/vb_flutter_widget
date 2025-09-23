import 'package:flutter/material.dart';

class Listviewbuilderlearn extends StatefulWidget {
  const Listviewbuilderlearn({super.key});

  @override
  State<Listviewbuilderlearn> createState() => _ListviewbuilderlearnState();
}

class _ListviewbuilderlearnState extends State<Listviewbuilderlearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(color: Colors.white);
        },
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network("https://picsum.photos/200")),
                Text("$index"),
              ],
            ),
          );
        },
      ),
    );
  }
}
