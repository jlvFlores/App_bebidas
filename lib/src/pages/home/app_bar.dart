import 'package:app_bebidas/constants.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: backgroundColor,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.home),
      color: primaryColor,
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
          .textTheme
          // ignore: deprecated_member_use
          .title
          .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Bebidas",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(
            text: " Mezcladas",
            style: TextStyle(color: secondaryColor),
          ),
        ],
      ),
    ),
  );
}
