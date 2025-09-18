import 'package:flutter/material.dart';

class ContainerSizedboxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("a" * 100),
          ), //sizedbox kutu oluşturmamızı sağlar
          //SizedBox.shrink()  boş alan
          SizedBox.square(
            dimension: 50, // 50  lik kare boş alan olsun
            child: Text("a" * 50),
          ),

          Container(
            height: 50,

            constraints: BoxConstraints(
              maxWidth: 150,
              minWidth: 100,
              maxHeight: 100,
            ),
            child: Text("aa" * 5),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: projectcontainerdecoration
                .boxdecoration, // çoğu stil özelliğini burada veririz
          ),
        ],
      ),
    );
  }
}

class projectcontainerdecoration {
  static BoxDecoration boxdecoration = BoxDecoration(
    //color: Colors.red,
    gradient: LinearGradient(colors: [Colors.red, Colors.white]),
    borderRadius: BorderRadius.circular(15), //köşeleri ayarlama
    border: Border.all(width: 10),
  );
}
