import 'package:flutter/material.dart';

import '../config.dart';

class Splas extends StatelessWidget {
  const Splas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: kPrimeryColor2,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/cook.png",
                height: MediaQuery.of(context).size.shortestSide < 600
                    ? (screenHeight < 800 ? 200 : 350)
                    : (screenHeight < 1000 ? 350 : 400),
              ),
              const SizedBox(
                height: 16,
              ),
               Text(
                'Willkommen zu PIZZABEATS',
                style: TextStyle(
                  fontFamily: 'Sriracha',
                  fontSize:screenHeight < 1000 ?  12:16,
                ),
              ),
            ],
          ),
        ));
  }
}
