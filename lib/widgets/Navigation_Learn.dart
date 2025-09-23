import 'package:flutter/material.dart';
import 'package:vb_flutter/widgets/Navigate_Learn.dart';
import 'package:vb_flutter/widgets/image_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with Navigatormanager {
  List<int> selectedItems = [];

  void addselected(int index, bool isadd) {
    setState(() {
      isadd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () async {
              final response = await navigationwidgetnormal<bool>(
                context,
                NavigateLearn(isok: selectedItems.contains(index)),
              );
              if (response is bool) {
                addselected(index, true);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: selectedItems.contains(index)
                    ? Colors.green
                    : Colors.orange,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () async {},
      ),
    );
  }
}

mixin Navigatormanager {
  void navigationwidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true, //acılıs sekli
        settings: RouteSettings(),
      ),
    );
  }

  Future<T?> navigationwidgetnormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true, //acılıs sekli
        settings: RouteSettings(),
      ),
    );
  }
}
