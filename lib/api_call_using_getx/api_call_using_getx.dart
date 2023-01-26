import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter ListView'),
        ),
        body: MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatelessWidget {
  final ApiController _apiController = Get.put(ApiController());

  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => _apiController.loading.value
        ? const CircularProgressIndicator()
        : ListView.builder(
            itemCount: _apiController.dataResponse.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 75,
                color: Colors.white,
                child: Center(
                  child: Text(
                    _apiController.dataResponse[index].title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              );
            }));
  }
}
