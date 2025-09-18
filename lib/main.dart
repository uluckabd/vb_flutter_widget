import 'package:flutter/material.dart';
import 'package:vb_flutter/widgets/container_sizedbox_learn.dart';
import 'package:vb_flutter/widgets/scaffold_learn.dart';
import 'package:vb_flutter/widgets/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          'Flutter Demo', // android tarafında kodu arkaya aldığımızda yani geçmiş uygulamaları temizlerken orda yazan isim bu
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false, // debug banner'ı kaldırır
      home: Scaffold_learn(),
    );
  }
}
