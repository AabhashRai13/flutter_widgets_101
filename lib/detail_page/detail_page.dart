import 'package:flutter/material.dart';
import 'package:widget_test/models/image.dart';

class DetailPage extends StatelessWidget {
  final ImageModel? imageModel;

  const DetailPage({Key? key, this.imageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent(context),bottomContent(context)
        ],
      ),
    );
  }

  Widget topContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  imageModel!.img ??
                      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80",
                ),
                fit: BoxFit.cover,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: topContentText(),
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );
  }

  Widget topContentText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 120.0),
        const Icon(
          Icons.directions_car,
          color: Colors.white,
          size: 40.0,
        ),
        const SizedBox(
          width: 90.0,
          child: Divider(color: Colors.green),
        ),
        const SizedBox(height: 10.0),
        Text(
          imageModel!.title!,
          style: const TextStyle(color: Colors.white, fontSize: 45.0),
        ),
        const SizedBox(height: 30.0),
      ],
    );
  }
  Widget bottomContentText () {
    return
      Text(
        imageModel!.description!,
        style: const TextStyle(fontSize: 18.0),
      );
  }
  Widget readButton(BuildContext context) {
    return Container(
        padding:const  EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: MaterialButton(
          onPressed: () => {},
          color:const Color.fromRGBO(58, 66, 86, 1.0),
          child:
          const Text("TAKE THIS LESSON", style: TextStyle(color: Colors.white)),
        ));
  }
  Widget bottomContent (BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding:const EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[bottomContentText(), readButton(context)],
        ),
      ),
    );
  }
}
