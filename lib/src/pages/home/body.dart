import 'package:app_bebidas/constants.dart';
import 'package:app_bebidas/src/models/Product.dart';
import 'package:app_bebidas/src/pages/details_page.dart';
import 'package:app_bebidas/src/pages/home/item_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(defaultPaddin, 5, defaultPaddin, 5),
          child: Text(
            "Elige tu bebida favorita",
            style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold, color: primaryColor),
          ),
        ),
        // Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: defaultPaddin,
                crossAxisSpacing: defaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  )
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}