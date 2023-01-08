import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String? description;
  final String? ratings;

  const Description({Key? key, this.description, this.ratings})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description!,
          style:
               TextStyle(fontWeight: FontWeight.w100, color: Colors.grey[700]),
        ),
        Row(
          children: [
            Text(
              "Ratings: $ratings",
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.black),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: OutlinedButton(

                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), //<-- SEE HERE

                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                child: const Text("See more", style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        )
      ],
    );
  }
}
