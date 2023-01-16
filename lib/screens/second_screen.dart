import 'package:flutter/material.dart';
import 'package:widget_test/route_managerment/route_manager.dart';
import 'package:widget_test/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  // Navigator.pushReplacement<void, void>(
                  //   context,
                  //   MaterialPageRoute<void>(
                  //     builder: (BuildContext context) => const ThirdScreen(),
                  //   ),
                  // );

                  Navigator.pushReplacementNamed(context, Routes.thirdScreen);

                },
                child: const Text("To Third Screen")),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context, "passed back");
                },
                child: const Text("back")),
          ],
        ),
      ),
    );
  }
}
