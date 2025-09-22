import 'package:flutter/material.dart';
import 'package:vb_flutter/widgets/randomimage.dart';

class ListtileLearn extends StatelessWidget {
  const ListtileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Randomimage(height: 100),

              // dense: true, paddingleri kıarar küçültür
              onTap: () {},
              subtitle: Text("how do you use your card"),
              leading: Container(color: Colors.red, child: Icon(Icons.money)),
              trailing: Container(
                width: 20,
                color: Colors.red,
                child: SizedBox(width: 20, child: Icon(Icons.arrow_right)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// core her yerde kullanılır ama product projeye özgüdür
