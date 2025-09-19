import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarLearn extends StatelessWidget {
  AppbarLearn({super.key});

  final String _title = "welcome learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title), // değişkenelre atayarak dinamik kullanıyoruz
        leading: Icon(Icons.back_hand), //sol tarafta ikon
        //  centerTitle: true, //başlığın nerde başlayacapına karar verir
        // backgroundColor: Colors.transparent,
        //elevation: 0,
        //  toolbarTextStyle: TextStyle(color: Colors.blue),
        // systemOverlayStyle: SystemUiOverlayStyle.light,
        // actionsIconTheme: IconThemeData(color: Colors.amber),
        // automaticallyImplyLeading:false, // default gelen back butonunu kaldırır
        actions: [
          // app barın sağ tarafındaki menu
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
