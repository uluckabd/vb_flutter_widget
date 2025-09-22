import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex:
                4, // flex oranlı paylaştırmamızı sağlar.yani 4 2 2 2 paylaştırırsak ona göre oranlı paylaşır
            child: Row(
              children: [
                Expanded(
                  child: Container(color: const Color.fromARGB(255, 26, 4, 2)),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 188, 66, 55),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 43, 192, 85),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 191, 16, 136),
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [Text("data1"), Text("data2"), Text("data3")],
            ),
          ),
          SizedBox(
            height: projectcontainersizes.cardheight,
            child: Column(
              children: [
                Expanded(child: Text("data1")),
                Expanded(child: Text("data2")),
                Expanded(child: Text("data3")),
                Expanded(child: Text("data4")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class projectcontainersizes {
  static const double cardheight = 200;
}
