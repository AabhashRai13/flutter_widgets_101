import 'package:flutter/material.dart';

class TextFormFieldClass extends StatefulWidget {
 const TextFormFieldClass({Key? key}) : super(key: key);

  @override
  State<TextFormFieldClass> createState() => _TextFormFieldClassState();
}

class _TextFormFieldClassState extends State<TextFormFieldClass> {
  final TextEditingController _textEditingController = TextEditingController();
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _textEditingController,

        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              displayText = _textEditingController.text;
            });
          },
          child: const Text("Display text"),
        ),
        Center(child: Text(displayText))
      ],
    );
  }
}
