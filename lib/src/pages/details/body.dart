import 'package:flutter/material.dart';
import 'package:app_bebidas/constants.dart';
import 'package:app_bebidas/src/models/Product.dart';
import 'package:app_bebidas/src/pages/details/preparar_btn.dart';
import 'package:app_bebidas/src/pages/details/type.dart';
import 'package:app_bebidas/src/pages/details/description.dart';
import 'package:app_bebidas/src/pages/details/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: defaultPaddin,
                    right: defaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndType(product: product),
                      SizedBox(height: defaultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: defaultPaddin / 2),
                      PrepararBtn(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
