import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../contants.dart';

class BodyDetailScreen extends StatelessWidget {
  const BodyDetailScreen({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 30.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: Key(
                  catalog.id.toString(),
                ),
                child: Container(
                  // clipBehavior: Clip.antiAlias,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(
                  //     10.0,
                  //   ),
                  //   boxShadow: [kDefaultShadow],
                  //   // border: Border.all(
                  //   //   color: Colors.black12,
                  //   // ),
                  // ),
                  child: Image.network(
                    catalog.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              SingleChildScrollView(
                child: Container(
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          catalog.name,
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        child: Text(
                          catalog.desc,
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        "Et pariatur amet ullamco sit ullamco non ut excepteur. Sit dolor irure aliquip cillum nulla ullamco. Laboris deserunt consequat culpa sit aute amet eiusmod nostrud minim.Sit dolor irure aliquip cillum nulla ullamco. Laboris deserunt consequat culpa sit aute amet eiusmod nostrud minim.Sit dolor irure aliquip cillum nulla ullamco. Laboris deserunt consequat culpa sit aute amet eiusmod nostrud minim.Sit dolor irure aliquip cillum nulla ullamco. Laboris deserunt consequat culpa sit aute amet eiusmod nostrud minim.",
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),

                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
