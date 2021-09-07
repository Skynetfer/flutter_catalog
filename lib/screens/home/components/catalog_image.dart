import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Image.network(
        image,
        width: 100,
        height: 100,
      ),
    );
    // return Image.network(
    //   image,
    // ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
  }
}
