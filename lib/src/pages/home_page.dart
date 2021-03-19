import 'package:app_bebidas/constants.dart';
import 'package:flutter/material.dart';
import 'package:app_bebidas/src/pages/home/app_bar.dart';

import 'home/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      backgroundColor: backgroundColor,
      // body: Body(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/blueBackground1.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Body(),
      ),
    );
  }
}

