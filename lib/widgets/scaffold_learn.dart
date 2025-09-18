import 'package:flutter/material.dart';
import 'package:vb_flutter/widgets/container_sizedbox_learn.dart';

class Scaffold_learn extends StatelessWidget {
  const Scaffold_learn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //en önemli widget
      appBar: AppBar(title: Text("scaffold learn")), // ilk componenti
      body: Text("data"), // sayfanın gövdesi
      backgroundColor: Colors.red,
      extendBody: true, // aşağıda tabbarın içinde alan varsa o açılıyor
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            // alttan çıkan container
            context: context,
            builder: (context) => Container(height: 200),
          );
        },
      ), // fab buton
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, // fab buto konumu
      drawer: Drawer(), // yan menü
      bottomSheet: BottomSheet(
        // bunu araştır
        onClosing: () {},
        builder: (context) {
          return Text("bbbbbb");
        },
      ), //sayfaya özel sheet
      bottomNavigationBar: Container(
        height: 200,
        child: BottomNavigationBar(
          // alt menü
          // sayfanın alt kısmı vs.
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "text",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "text",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "text",
            ),
          ],
        ),
      ),
    );
  }
}
