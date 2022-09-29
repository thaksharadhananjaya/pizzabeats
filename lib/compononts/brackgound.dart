import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

import '../config.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        buildTopContainer(screenWidth, screenHeight, context),
        Padding(
          padding: const EdgeInsets.only(top: 46, left: 16, right: 16),
          child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/logo.png",
              )),
        ),
        buildBottomContainer(screenWidth, screenHeight, context),
        child
      ],
    );
  }

  ClipPath buildTopContainer(
      double screenWidth, double screenHeight, BuildContext context) {
    return ClipPath(
      clipper: ProsteBezierCurve(
        position: ClipPosition.bottom,
        list: [
          BezierCurveSection(
            start: const Offset(0, 150),
            top: Offset(screenWidth / 2, 110),
            end: Offset(screenWidth, 120),
          ),
        ],
      ),
      child: Container(
        color: kPrimeryColor1,
        height: MediaQuery.of(context).size.shortestSide < 600 ? 120 : (screenHeight<1000? 130:140),
      ),
    );
  }

  Align buildBottomContainer(
      double screenWidth, double screenHeight, BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: ProsteBezierCurve(
          position: ClipPosition.top,
          list: [
            BezierCurveSection(
              start: Offset(screenWidth, 0),
              top: Offset(screenWidth / 2.7, 20),
              end: const Offset(0, 10),
            ),
          ],
        ),
        child: Container(
          color: kPrimeryColor1,
          height: MediaQuery.of(context).size.shortestSide < 600
              ? 80
              : (screenHeight < 1000 ? 90 : 120),
        ),
      ),
    );
  }
}
