import 'package:flutter/material.dart';
import 'package:widget_test/detail_page/detail_page.dart';

import '../models/image.dart';

class Description extends StatelessWidget {
final ImageModel? image;

  const Description({Key? key, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
         image!. description!,
          style:
              TextStyle(fontWeight: FontWeight.w100, color: Colors.grey[700]),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Text(
                "Ratings: ${image!.ratings}",
                style: const TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  DetailPage(imageModel: image!,)),
                    );
                  },

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue), //<-- SEE HERE

                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: const Text(
                    "See more",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
