import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third screen"),
      ),
      body: Center(
        child: OutlinedButton(onPressed: () {}, child: const Text("data")),
      ),
    );
  }
}
