import 'package:flutter/material.dart';
import 'package:vb_flutter/widgets/Stack_Learn.dart';
import 'package:vb_flutter/widgets/icon_learn.dart';
import 'package:vb_flutter/widgets/image_learn.dart';

class PageviewLearn extends StatefulWidget {
  const PageviewLearn({super.key});

  @override
  State<PageviewLearn> createState() => _PageviewLearnState();
}

class _PageviewLearnState extends State<PageviewLearn> {
  final pagecontroller = PageController(viewportFraction: 0.7);
  int currentpageindex = 0;
  void updatepageindex(int index) {
    setState(() {
      currentpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              pagecontroller.previousPage(
                duration: Duration(seconds: 1),
                curve: Curves.bounceInOut,
              );
            },
            child: Icon(Icons.arrow_left_outlined),
          ),
          FloatingActionButton(
            onPressed: () {
              pagecontroller.nextPage(
                duration: Duration(seconds: 1),
                curve: Curves.bounceIn,
              );
            },
            child: Icon(Icons.arrow_right_alt_sharp),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: pagecontroller,
        onPageChanged: updatepageindex,

        children: [
          ImageLearn(),
          IconLearn(),
          StackLearn(),
          Container(color: Colors.amber),
          Container(color: Colors.black),
        ],
      ),
    );
  }
}
