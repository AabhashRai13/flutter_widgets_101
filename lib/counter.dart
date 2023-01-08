import 'dart:developer';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "My first appbar title",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
          child: Text(
        "Counter \n       $count",
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });

          log("counter incremented to $count");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
