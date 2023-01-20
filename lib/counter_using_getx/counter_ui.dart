import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/counter_controller.dart';

class CounterUi extends StatelessWidget {
  CounterUi({Key? key}) : super(key: key);

  final Controller _controller = Get.put(Controller());

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
          child: Obx(() => Text(
                "Counter \n       ${_controller.count}",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.increment();

          log("counter incremented to ${_controller.count}");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
