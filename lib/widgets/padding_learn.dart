import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: projectpadding.pagepadding,
        child: Column(
          //ana widgetı paddinge alırsak içindeki widgetlara vermemize gerek kalmaz
          children: [
            Padding(
              //sarmalamamızı sağlar
              padding: const EdgeInsets.all(10),
              child: Container(height: 100, color: Colors.white),
            ),

            Container(height: 100, width: 200, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class projectpadding {
  static const pagepadding = EdgeInsets.all(10);
}
