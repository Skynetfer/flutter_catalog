import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'components/detail_body.dart';
import 'components/detail_bottom_navigation.dart';

class HOmeDetailScreen extends StatelessWidget {
  final Item catalog;
  const HOmeDetailScreen({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      bottomNavigationBar: BottomNavigationBarDetailSCreen(catalog: catalog),
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        bottom: false,
        child: BodyDetailScreen(catalog: catalog),
      ),
    );
  }
}
