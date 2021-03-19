import 'package:app_bebidas/constants.dart';
import 'package:app_bebidas/src/models/Product.dart';
import 'package:flutter/material.dart';

class ColorAndType extends StatelessWidget {
  const ColorAndType({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: textColor),
              children: [
                TextSpan(text: "Alcohol:\n"),
                TextSpan(
                  text: "${product.type}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// class ColorDot extends StatelessWidget {
//   final Color color;
//   final bool isSelected;
//   const ColorDot({
//     Key key,
//     this.color,
//     // by default isSelected is false
//     this.isSelected = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(
//         top: defaultPaddin / 4,
//         right: defaultPaddin / 2,
//       ),
//       padding: EdgeInsets.all(2.5),
//       height: 24,
//       width: 24,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(
//           color: isSelected ? color : Colors.transparent,
//         ),
//       ),
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           color: color,
//           shape: BoxShape.circle,
//         ),
//       ),
//     );
//   }
// }
