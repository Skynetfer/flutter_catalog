import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/screens/home/components/add_item_to_cart.dart';

import '../../../contants.dart';

class BottomNavigationBarDetailSCreen extends StatelessWidget {
  const BottomNavigationBarDetailSCreen({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        30.0,
      ),
      color: Colors.transparent,
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
          AddToCart(catalog: catalog),
        ],
      ),
    );
  }
}
