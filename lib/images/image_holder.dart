import 'package:flutter/material.dart';
import 'package:widget_test/container/container.dart';

import '../models/image.dart';
import 'description.dart';

class ImageHolder extends StatelessWidget {
 final ImageModel? image;
  const ImageHolder({Key? key, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 320,

        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            ContainerClass(
              img: image!.img,
              height: 180,
              width: MediaQuery.of(context).size.width,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(image!.title ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2),
              child: Description(image: image,),
            )
          ],
        ),
      ),
    );
  }
}
