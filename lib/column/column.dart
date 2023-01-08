import 'package:flutter/material.dart';
import 'package:widget_test/container/container.dart';
class ColumnClass extends StatelessWidget {
  const ColumnClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        ContainerClass(
          img:"https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg" ,
        ),
        ContainerClass(
          img:"https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg" ,
        ),
        ContainerClass(
        ),

      ],
    );
  }
}
