import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldLearn extends StatefulWidget {
  const TextfieldLearn({super.key});

  @override
  State<TextfieldLearn> createState() => _TextfieldLearnState();
}

FocusNode focusnodetextfieldone = FocusNode();
FocusNode focusnodetextfieldotwo = FocusNode();

class _TextfieldLearnState extends State<TextfieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 100,
            buildCounter:
                (
                  context, {
                  required currentLength,
                  required isFocused,
                  required maxLength,
                }) {
                  return animatedcontainer(currentLength);
                },
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            inputFormatters: [
              textprojectformatter().formatter,
              // sınırladığımız haarfi yazmamızı engeller
            ],
            textInputAction:
                TextInputAction.next, // bi sonraki textfielda geçmemizi sağlar
            focusNode: focusnodetextfieldone,
            minLines: 2,
            maxLines: 4,

            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              border: OutlineInputBorder(),
              labelText: "mail",
              fillColor: Colors.white,
              filled: true, //textfieldı boyamamız için true yapmamız lazım
            ),
          ),
          TextField(focusNode: focusnodetextfieldotwo),
        ],
      ),
    );
  }

  AnimatedContainer animatedcontainer(int currentLength) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      color: Colors.green,
      height: 10,
      width: 10.0 * (currentLength ?? 0),
    );
  }
}

class textprojectformatter {
  final formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (oldValue.text.length.isOdd) {
      return oldValue;
    } else {
      return oldValue;
    }
  });
}
