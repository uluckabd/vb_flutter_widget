import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    var titletextwidget2 = titletextwidget(
      title: 'dsfsd',
      text: 'sdfsdfsd',
    ); // local variable dersek onu üste değişken olarak tanımlar
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          titletextwidget2,
          Text("data", style: Theme.of(context).textTheme.headlineLarge),

          _custom_container(),

          empty_box(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class empty_box extends StatelessWidget {
  const empty_box({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 10);
  }
}

// ignore: camel_case_types
class _custom_container extends StatelessWidget {
  // extaract widget yaparak kodun içindeki bir parçayı dışarı çıkabiliriz
  const _custom_container();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

// ignore: camel_case_types
class titletextwidget extends StatelessWidget {
  titletextwidget({super.key, required this.title, required this.text});

  final String?
  title; // bu componente title diye text  gelcek ama null gelebilir eğer kesin vemek zorunda istiyosa required atması lazım
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}
