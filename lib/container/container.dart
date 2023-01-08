import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  final String? img;
  final double? height;
  final double? width;

  const ContainerClass({Key? key, this.img, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        // color: const Color.fromARGB(255, 46, 204, 32),
        width: width ?? 100,
        height: height ?? 100,

        // child:  const Image(image: AssetImage("assets/images/bc.png")))
        // child: const Center(child: Text("I am container"
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.network(
            img ??
                "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80",
            fit: BoxFit.cover,
          ),
        ));
  }
}
