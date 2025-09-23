// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavigateLearn extends StatefulWidget {
  const NavigateLearn({Key? key, this.isok = false}) : super(key: key);

  final bool isok;

  @override
  State<NavigateLearn> createState() => _NavigateLearnState();
}

class _NavigateLearnState extends State<NavigateLearn> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop(!widget.isok);
          },
          icon: Icon(
            Icons.check,
            color: widget.isok ? Colors.red : Colors.blue,
          ),
          label: widget.isok ? Text("red") : Text("oanyla"),
        ),
      ),
    );
  }
}
