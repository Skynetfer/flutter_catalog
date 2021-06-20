import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int months = 1;
    int days = 30;
    String name = "Công Ánh";

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child:
              Text('Học Flutter trong $months tháng, tức $days ngày bởi $name'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
