// ekran olacak
// bu ekranda 3 buton olacak basınca renk değişecek
// secili olan buton selectedicon olsun

import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.initialColor});
  final Color initialColor;

  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color _backcolor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backcolor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    print(oldWidget.initialColor != _backcolor);
    if (widget.initialColor != _backcolor && widget.initialColor != null) {
      changecolor(widget.initialColor!);
    }
  }

  void changecolor(Color color) {
    setState(() {
      _backcolor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backcolor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: colorontap,

        items: [
          BottomNavigationBarItem(
            icon: _Colorcontainer(color: Colors.amber),
            label: 'yellow',
          ),
          BottomNavigationBarItem(
            icon: _Colorcontainer(color: Colors.red),
            label: 'red',
          ),
          BottomNavigationBarItem(
            icon: _Colorcontainer(color: Colors.blue),
            label: 'blue',
          ),
        ],
      ),
    );
  }

  void colorontap(value) {
    if (value == _Mycolors.amber.index) {
      changecolor(Colors.red);
    } else if (value == _Mycolors.red.index) {
      changecolor(Colors.amber);
    } else if (value == _Mycolors.blue.index) {
      changecolor(Colors.blue);
    } else {}
  }
}

class _Colorcontainer extends StatelessWidget {
  const _Colorcontainer({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}

enum _Mycolors { red, amber, blue }
