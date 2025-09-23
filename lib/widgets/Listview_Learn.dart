import 'package:flutter/material.dart';

class ListviewLearn extends StatefulWidget {
  const ListviewLearn({super.key});

  @override
  State<ListviewLearn> createState() => _ListviewLearnState();
}

class _ListviewLearnState extends State<ListviewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Spacer(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                FittedBox(
                  child: Text(
                    "merhaba",
                    style: Theme.of(context).textTheme.headlineLarge,
                    maxLines: 1,
                    textScaleFactor: 1,
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 31, 40, 100),
                  height: 300,
                ),
                Divider(),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      Container(
                        color: const Color.fromARGB(255, 55, 159, 31),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 147, 47, 51),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 132, 196, 209),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 209, 114, 37),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 137, 196, 160),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 212, 21, 168),
                        width: 100,
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                //xxxxxxxxxxxxxxxxxxxxx
                FittedBox(
                  child: Text(
                    "merhaba",
                    style: Theme.of(context).textTheme.headlineLarge,
                    maxLines: 1,
                    textScaleFactor: 1,
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 31, 40, 100),
                  height: 300,
                ),
                Divider(),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      Container(
                        color: const Color.fromARGB(255, 55, 159, 31),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 147, 47, 51),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 132, 196, 209),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 209, 114, 37),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 137, 196, 160),
                        width: 100,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 212, 21, 168),
                        width: 100,
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                Listdemo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Listdemo extends StatefulWidget {
  const Listdemo({super.key});

  @override
  State<Listdemo> createState() => _ListdemoState();
}

class _ListdemoState extends State<Listdemo> {
  @override
  void initState() {
    super.initState();
    print("sa");
  }

  @override
  void dispose() {
    super.dispose();
    print("as");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
