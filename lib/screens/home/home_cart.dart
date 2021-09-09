import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import '../../contants.dart';

class CartHome extends StatelessWidget {
  const CartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kLightColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 40.0,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              height: 500.0,
              child: _CartList(),
            ),
            Divider(),
            _CartTotal(),
          ],
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200.0,
      child: Padding(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$ ${_cart.totalPrice} ",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Buying",
                    ),
                  ),
                );
                print("show buying");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).buttonColor,
                ),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Text(
                  "Buy",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontSize: 15.0,
                        color: kLightColor,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: unused_element
// class _CartList extends StatelessWidget {
//   final _cart = CartModel();
//   _CartList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (context, index) => ListTile(
//         leading: Icon(
//           Icons.done,
//         ),
//         title: Text("Item 1"),
//         trailing: IconButton(
//           onPressed: () {},
//           icon: Icon(
//             Icons.remove_circle_outline,
//           ),
//         ),
//       ),
//       itemCount: 5,
//     );
//   }
// }

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? Container(
            padding: EdgeInsets.symmetric(
              vertical: 200.0,
            ),
            child: Text(
              "Notthing",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          )
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {
                  _cart.removeItems(_cart.items[index]);
                  setState(() {});
                },
              ),
              title: Text(
                _cart.items[index].name,
              ),
            ),
          );
  }
}
