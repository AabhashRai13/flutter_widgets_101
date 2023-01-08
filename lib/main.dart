import 'package:flutter/material.dart';

import 'images/image_holder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Flutter 101"),
      ),
      body: const ImageHolder(
        img:
            "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
        title: "Image1",
        description:
            "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
        ratings: "4.5",
      ),
    );
  }
}
