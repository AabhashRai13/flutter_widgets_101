import 'package:flutter/material.dart';
import 'package:widget_test/images/image_holder.dart';
import 'package:widget_test/models/image.dart';
class ListViewClass extends StatelessWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children:const  [
        ImageHolder(

          image: ImageModel(
            img:
            "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
            title: "Image1",
            description:
            "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
            ratings: "4.5",
          ),
        ),    ImageHolder(

          image: ImageModel(
            img:
            "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
            title: "Image1",
            description:
            "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
            ratings: "4.5",
          ),
        ),   ImageHolder(

          image: ImageModel(
            img:
            "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
            title: "Image1",
            description:
            "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
            ratings: "4.5",
          ),
        ),   ImageHolder(

          image: ImageModel(
            img:
            "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
            title: "Image1",
            description:
            "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
            ratings: "4.5",
          ),
        ),   ImageHolder(

          image: ImageModel(
            img:
            "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
            title: "Image1",
            description:
            "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
            ratings: "4.5",
          ),
        ),   ImageHolder(

          image: ImageModel(
            img:
            "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
            title: "Image1",
            description:
            "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
            ratings: "4.5",
          ),
        ),   ImageHolder(

          image: ImageModel(
            img:
            "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
            title: "Image1",
            description:
            "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
            ratings: "4.5",
          ),
        ),
      ],
    );
  }
}
