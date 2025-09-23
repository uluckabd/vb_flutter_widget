import 'package:flutter/material.dart';

class Mycollectionsdemo extends StatefulWidget {
  const Mycollectionsdemo({super.key});

  @override
  State<Mycollectionsdemo> createState() => _MycollectionsdemoState();
}

class _MycollectionsdemoState extends State<Mycollectionsdemo> {
  late final List<collectionmodel> _items;

  @override
  void initState() {
    super.initState();
    _items = collectionitems()._itemm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: paddingutility().horpadding,
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return categroycard(model: _items[index]);
        },
      ),
    );
  }
}

class categroycard extends StatelessWidget {
  const categroycard({super.key, required collectionmodel model})
    : _model = model;

  final collectionmodel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: paddingutility().paddingbottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: paddingutility().normalpadding,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagepath, fit: BoxFit.fill)),
              Padding(
                padding: paddingutility().paddingtop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text("${_model.price} etc..")],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class collectionmodel {
  final String imagepath;
  final String title;
  final double price;

  collectionmodel({
    required this.imagepath,
    required this.title,
    required this.price,
  });
}

class paddingutility {
  final paddingtop = EdgeInsets.only(top: 10);
  final paddingbottom = EdgeInsets.only(bottom: 20);
  final Paddinggeneral = EdgeInsets.all(20);
  final normalpadding = EdgeInsets.all(8.0);
  final horpadding = EdgeInsets.symmetric(horizontal: 20);
}

class collectionitems {
  late final List<collectionmodel> _itemm;

  collectionitems() {
    _itemm = [
      collectionmodel(
        imagepath: "assets/jpg/applebook.jpg",
        title: "Abstract art",
        price: 3.4,
      ),
      collectionmodel(
        imagepath: "assets/jpg/applebook.jpg",
        title: "Abstract art",
        price: 3.4,
      ),
      collectionmodel(
        imagepath: "assets/jpg/applebook.jpg",
        title: "Abstract art",
        price: 3.4,
      ),
      collectionmodel(
        imagepath: "assets/jpg/applebook.jpg",
        title: "Abstract art",
        price: 3.4,
      ),
    ];
  }
}
