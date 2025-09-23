import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.mesaj});
  final String mesaj;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String message = 'apoaa';
  late final bool isodd;
  @override
  void initState() {
    //güncelleme statei
    super.initState();
    message = widget.mesaj;
    isodd = widget.mesaj.length.isOdd;
  }

  void computename() {
    if (isodd) {
      message += "cift";
    } else {
      message += "tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(message)),
      body: isodd
          ? TextButton(onPressed: () {}, child: Text(message))
          : ElevatedButton(onPressed: () {}, child: Text(message)),
    );
  }
}
