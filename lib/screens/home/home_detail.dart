import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../contants.dart';

class HOmeDetailScreen extends StatelessWidget {
  final Item catalog;
  const HOmeDetailScreen({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(
          30.0,
        ),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            Text(
              "\$" + catalog.price.toString(),
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    kDarkColor,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: Container(
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Text(
                  "Buy",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: kLightColor,
      body: SafeArea(
        bottom: false,
        child: Container(
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
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        boxShadow: [kDefaultShadow],
                        // border: Border.all(
                        //   color: Colors.black12,
                        // ),
                      ),
                      child: Image.network(
                        catalog.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              catalog.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            child: Text(
                              catalog.desc,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Et pariatur amet ullamco sit ullamco non ut excepteur. Sit dolor irure aliquip cillum nulla ullamco. Laboris deserunt consequat culpa sit aute amet eiusmod nostrud minim.",
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
        ),
      ),
    );
  }
}
