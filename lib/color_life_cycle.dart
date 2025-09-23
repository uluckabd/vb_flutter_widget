import 'package:flutter/material.dart';
import 'package:vb_flutter/widgets/Color_demos_view.dart';

class ColorLifeCycle extends StatefulWidget {
  const ColorLifeCycle({super.key});

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {
  Color? _backgroundcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: changebackcolor, icon: Icon(Icons.clear)),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
            child: ColorDemosView(
              initialColor: _backgroundcolor ?? Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }

  void changebackcolor() {
    setState(() {
      _backgroundcolor = Colors.pink;
    });
  }
}
