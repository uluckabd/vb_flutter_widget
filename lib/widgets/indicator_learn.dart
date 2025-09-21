import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});
  // loading circular renkleri ortaktır bir uygulamada farklı farklı loading renkelri olmaz yanlıstır

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [CircularProgressIndicator()]),
      body: //center_circular_widget(),
      Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}

class center_circular_widget extends StatelessWidget {
  const center_circular_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.red,
        strokeWidth: 8,
        value: 0.8,
        backgroundColor: Colors.white,
      ),
    );
  }
}
