import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            Hero(
              tag: Key(
                catalog.id.toString(),
              ),
              child: CatalogImage(
                image: catalog.image,
              ),
            ),
            Container(
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      catalog.name,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      catalog.desc,
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                    ),
                    10.heightBox,
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        Text(
                          "\$" + catalog.price.toString(),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              context.theme.buttonColor,
                            ),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(),
                            ),
                          ),
                          child: Text(
                            "Add to cart",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
