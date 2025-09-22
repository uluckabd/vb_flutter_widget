import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vb_flutter/widgets/ListTile_Learn.dart';
import 'package:vb_flutter/widgets/appbar_learn.dart';
import 'package:vb_flutter/widgets/button_learn.dart';
import 'package:vb_flutter/widgets/card_learn.dart';
import 'package:vb_flutter/widgets/color_learn.dart';
import 'package:vb_flutter/widgets/container_sizedbox_learn.dart';
import 'package:vb_flutter/widgets/custom_widget_learn.dart';
import 'package:vb_flutter/widgets/demo_page.dart';
import 'package:vb_flutter/widgets/icon_learn.dart';
import 'package:vb_flutter/widgets/image_learn.dart';
import 'package:vb_flutter/widgets/indicator_learn.dart';
import 'package:vb_flutter/widgets/padding_learn.dart';
import 'package:vb_flutter/widgets/scaffold_learn.dart';
import 'package:vb_flutter/widgets/stateless_learn.dart';
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
      theme: ThemeData.dark().copyWith(
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
        cardTheme: CardThemeData(
          // burda olusturduğumuz kartla bütün projede aynı kartı kullnabiliriz
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
        ),
        // burda app barı yaparız her yerde kullanırız default olarak atarız yani durmadan yazmamıza gerek yok
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      debugShowCheckedModeBanner: false, // debug banner'ı kaldırır
      home: ListtileLearn(),
    );
  }
}
