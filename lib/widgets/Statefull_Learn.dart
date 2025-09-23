import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countvalue = 0;

  void updatecounter(bool isIncrement) {
    if (isIncrement) {
      countvalue = countvalue + 1;
    } else {
      countvalue = countvalue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(languageItems.welcometitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [incrementmethod(), deincremetmethod()],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              countvalue.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Placeholder(),
          counterbutton(),
        ],
      ),
    );
  }

  Padding incrementmethod() {
    print("burda");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          updatecounter(true);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Padding deincremetmethod() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          updatecounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}

class counterbutton extends StatefulWidget {
  const counterbutton({super.key});

  @override
  State<counterbutton> createState() => _counterbuttonState();
}

class _counterbuttonState extends State<counterbutton> {
  int countercustom = 0;
  final String title = "merhaba";
  void updatecounter() {
    setState(() {
      ++countercustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        updatecounter();
      },
      child: Text("$title $countercustom"),
    );
  }
}

class languageItems {
  static const welcometitle = "merhaba";
}
