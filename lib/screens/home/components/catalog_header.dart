import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';

// class CatalogHeader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Catalog App",
//           style: Theme.of(context).textTheme.headline5!.copyWith(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 40.0,

//               ),
//         ),
//         Text(
//           "Trending products",
//           style: Theme.of(context).textTheme.headline6!.copyWith(
//                 fontWeight: FontWeight.w300,
//                 fontSize: 20.0,
//               ),
//         ),
//       ],
//     );
//   }
// }

class CatalogHeader extends StatefulWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  _CatalogHeaderState createState() => _CatalogHeaderState();
}

class _CatalogHeaderState extends State<CatalogHeader> {
  int? selectedCategory = 0;
  List<String> categories = [
    "Flash Sale",
    "Top Trending",
    "Top Seller",
    "Mall",
    "Top Sales",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.w600,
                    // color: index == selectedCategory
                    //     ? context.canvasColor
                    //     : Colors.black.withOpacity(
                    //         0.4,
                    //       ),
                  ),
            ),
            Container(
              height: 6.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                // border: Border.all(width: 2.0),
                color: index == selectedCategory
                    ? Colors.green[800]
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
