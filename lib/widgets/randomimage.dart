// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Randomimage extends StatelessWidget {
  const Randomimage({Key? key, required this.height}) : super(key: key);

  final imageurl = "";
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/jpg/applebook.jpg",
      height: 100,
      fit: BoxFit.cover,
    );
  }
}
