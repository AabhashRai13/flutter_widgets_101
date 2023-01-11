import 'package:flutter/material.dart';
import 'package:widget_test/images/image_holder.dart';
import 'package:widget_test/models/image.dart';

class ListViewBuilderClass extends StatelessWidget {
  ListViewBuilderClass({Key? key}) : super(key: key);
  final List<ImageModel> images = [
    const ImageModel(
      img:
          "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
      title: "Image1",
      description:
          "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
      ratings: "4.5",
    ),
    const ImageModel(
      img:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg",
      title: "Image2",
      description:
          "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
      ratings: "4.5",
    ),
    const ImageModel(
      img:
          "https://thumbs.dreamstime.com/b/morpho-butterfly-bright-shining-background-gold-blue-texture-background-golden-crumpled-paper-morpho-butterfly-bright-138179349.jpg",
      title: "Image3",
      description:
          "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
      ratings: "4",
    ),
    const ImageModel(
      img:
          "https://wwd.com/wp-content/uploads/2021/07/Screenshot-2021-06-17-at-10.29.40.png",
      title: "Lisa",
      description:
          "lore ipsum this is nothing but bunch of fake text that may or may not make senseÒ",
      ratings: "10000 daayumm",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) => ImageHolder(
          image: images[index],
            ));
  }
}
