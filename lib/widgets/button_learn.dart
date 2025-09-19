import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // eğer butonun onpressed metoduna null atarsak pasif olur
          // her butona ikon ekleyebiliriz
          TextButton(
            onPressed: () {},
            child: Text(
              "kaydet",
              style: Theme.of(context).textTheme.bodyLarge,
            ), // butonlara ileri seviye stil vermek içi texttheme kullanırız
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.green;
                }

                return Colors.red;
              }),
            ),
          ), // yazı buton
          ElevatedButton(
            onPressed: () {
              //işlemler burda yapılır
              //istek at vs
            },
            child: Text("buton"),
          ), //arka planı vs var
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          ), // ikon butonu
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.abc)),
          SizedBox(
            width: 200,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {},
              child: SizedBox(width: 200, child: Text("çerceve")),
            ),
          ), // borderradiuslu buton
          InkWell(onTap: () {}, child: Text("yazıyo buton özelliği verme")),

          Container(height: 200, color: Colors.white),
          SizedBox(height: 40),

          ElevatedButton(
            style: ElevatedButton.styleFrom(),

            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: 20,
                left: 20,
              ),
              child: Text(
                "place bid",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//borders
//circularborder roundedroctangeborder
