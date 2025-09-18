import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key});
  final String name = "abdullah";

  final projectkeys keys = projectkeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "welcome $name ${name.length}",
              maxLines: 2, //maximum iki satır
              overflow:
                  TextOverflow.ellipsis, // iki satırdan çoksa yandan 3 nokta
              textAlign:
                  TextAlign.left, //texti sağdan soldan yönlendinrmeyi sağlar
              textScaleFactor: 2, // ekrana göre büyüme küçülme

              style: projectstyles.welcomestyle,
            ),
            Text(
              "hello $name ${name.length}",
              maxLines: 2, //maximum iki satır
              overflow:
                  TextOverflow.ellipsis, // iki satırdan çoksa yandan 3 nokta
              textAlign:
                  TextAlign.left, //texti sağdan soldan yönlendinrmeyi sağlar
              textScaleFactor: 2, // ekrana göre büyüme küçülme

              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: projectcolors.wlecomecolor,
              ), // burayı flutter bize default olarak veriyor theme den çekiyoruz
            ),

            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

// her yerde kullancağımız sabit bir stili ayrı bir sınıf yaparak karışıklıkları önleriz

class projectstyles {
  static TextStyle welcomestyle = const TextStyle(
    decoration: TextDecoration.underline, // textin altını çizme
    fontStyle: FontStyle.italic, // yazı tipi
    color: Colors.red, // yazı rengi
    fontSize: 16, // yazı büyüklüğü
    fontWeight: FontWeight.w600, //yazı kalınlığı
    wordSpacing: 2, //kelimeler arası boşluk
    letterSpacing: 3, // harfler arası boşluk
  );
}

class projectcolors {
  static Color wlecomecolor = Colors.yellow;
}

class projectkeys {
  final String welcome = "merhaba";
}
