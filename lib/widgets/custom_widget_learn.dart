import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({super.key});

  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,

                child: Custombutton(title: "Food", onPressed: () {}),
              ),
            ),
          ),
          SizedBox(height: 100),
          Custombutton(title: "Food", onPressed: () {}),
        ],
      ),
    );
  }
}

mixin _Colorsutility {
  final Color redcolor = Colors.red;
  final Color whitecolor = Colors.white;
}

// ignore: camel_case_types
mixin paddingutility {
  final EdgeInsets normalpadding = EdgeInsets.all(8.0);
}

class Custombutton extends StatelessWidget with _Colorsutility, paddingutility {
  Custombutton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redcolor,
        shape: StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: normalpadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: whitecolor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
