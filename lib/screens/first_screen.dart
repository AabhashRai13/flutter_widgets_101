import 'package:flutter/material.dart';
import 'package:widget_test/route_managerment/route_manager.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String passBackData = "";
  String buttonTitle = "Display";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstScreen"),
      ),
      body: Column(
        children: [
          Center(
            child: OutlinedButton(
                onPressed: () async {
                  // passBackData = await
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => const SecondScreen()),
                  //     )
                  // as String;
                   passBackData = await   Navigator.pushNamed(context, Routes.secondScreen) as String;

                },
                child: const Text("To second Screen")),
          ),
          Center(
            child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    buttonTitle = passBackData;
                  });
                },
                child: Text(passBackData)),
          ),
        ],
      ),
    );
  }
}
