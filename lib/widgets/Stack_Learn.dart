import 'package:flutter/material.dart';
import 'package:vb_flutter/widgets/Column_Row_Learn.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  final cardheight = 100.0;
  final cardwith = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // lifo mantığı var son giren ilk çıkar ya da son giren en yeni olandır
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Image.asset("assets/jpg/applebook.jpg"),
                  bottom: cardheight / 2,
                ),
                Positioned(
                  height: cardheight,
                  bottom: 0,
                  width: 200.0,
                  child: InkWell(
                    onTap: () {
                      print("tıklandı");
                    },
                    child: Card(
                      color: const Color.fromARGB(255, 154, 34, 34),
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 6),
        ],
      ),
    );
  }
}
