import 'package:flutter/material.dart';
import 'package:widget_test/container/container.dart';
class RowClass extends StatelessWidget {
  const RowClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const[
        ContainerClass(
          width: 120,
          height: 200,
          img:"https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg" ,
        ),
        ContainerClass(
          width: 70,
          height: 200,

          img:"https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg" ,
        ),
        ContainerClass(
          height: 200,

        ),

      ],
    );
  }
}