// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:vb_flutter/widgets/image_learn.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final firstitle = "Create your first note ";
    final data = 'create your first note';
    final description = 'add a note';
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: Padding(
        padding: paddingitems().verticallpadding,

        child: Column(
          children: [
            JpgImage(path: ProjectImages.applebook),
            title_widget(title: firstitle),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: subtitle_widget(title: description),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: ButtomHeights.buttomnormalheight,
                child: Center(
                  child: Text(
                    "create a note",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("import note")),
          ],
        ),
      ),
    );
  }
}

class subtitle_widget extends StatelessWidget {
  const subtitle_widget({
    Key? key,
    this.textAlign = TextAlign.center,
    required this.title,
  }) : super(key: key);
  final TextAlign? textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      title * 8,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class title_widget extends StatelessWidget {
  const title_widget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headlineMedium);
  }
}

class paddingitems {
  final EdgeInsets horizontalpadding = const EdgeInsets.symmetric(
    horizontal: 100,
  );
  final EdgeInsets verticallpadding = const EdgeInsets.symmetric(vertical: 100);
}

class ButtomHeights {
  static const double buttomnormalheight = 50;
}
