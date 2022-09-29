import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pizzabeats/config.dart';


import '../../compononts/brackgound.dart';
import '../pdfviewer.dart';
import 'frist_page.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenHeight);
    return Scaffold(
      backgroundColor: kPrimeryColor2,
      body: Background(
        child: Stack(
          children: [
            Positioned(
              top: screenHeight < 1000 ? 230 : 290,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedDisplay(
                    delay: const Duration(microseconds: 500),
                    child: Container(
                        width: screenWidth,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(bottom: 8),
                        child: DelayedDisplay(
                          delay: const Duration(seconds: 1),
                          child: Text(
                            'Willkommen zu PIZZABEATS',
                            style: TextStyle(
                                fontFamily: 'Sriracha',
                                fontSize: screenHeight < 1000 ? 22 : 27),
                          ),
                        )),
                  ),
                  DelayedDisplay(
                    delay: const Duration(seconds: 1),
                    child: Container(
                      width: screenWidth,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "PiZZABEATS ist ein cooles Spiel für kleine und große Gruppen, bei dem Bewegung, Reaktionsvermögen und Rhythmusgefühl gefragt sind. Belege deine Pizza deinem eigenen Beat und spiele gemeinsam mit deinen Mitspielern einen groovigen Sound.",
                        style:
                            TextStyle(fontSize: screenHeight < 1000 ? 16 : 20),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  DelayedDisplay(
                    delay: const Duration(seconds: 1),
                    child: Container(
                      width: screenWidth,
                      margin: EdgeInsets.only(top: screenHeight < 1000 ? 4 : 10),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenHeight < 1000 ? 16 : 20),
                              text:
                                  'Ihr kennt die Regeln nicht und möchtet wissen, wie Ihr PIZZABEATS spielt? ',
                            ),
                            TextSpan(
                                text: ' Hier',
                                style: TextStyle(
                                    fontSize: screenHeight < 1000 ? 16 : 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const PDF()));}),
                            TextSpan(
                              style: TextStyle(
                                  fontSize: screenHeight < 1000 ? 16 : 20,
                                  color: Colors.black),
                              text: ' könnt ihr die',
                            ),
                            TextSpan(
                                text: ' Spielanleitung',
                                style: TextStyle(
                                    fontSize: screenHeight < 1000 ? 16 : 20,
                                    color: Colors.black,fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const PDF()));}),
                            TextSpan(
                                text: ' anschauen!',
                                style: TextStyle(
                                    fontSize: screenHeight < 1000 ? 16 : 20,
                                    color: Colors.black,
                                    ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: screenHeight < 1000 ? 320 : 450,
              right: 80,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 2400),
                child: Image.asset(
                  "assets/images/msg.png",
                  height: screenHeight < 1000 ? 160 : 230,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 50,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const TabFristPage())));
                },
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 2250),
                  child: Image.asset(
                    "assets/images/Salami.png",
                    height: screenHeight < 1000 ? 310 : 400,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 1000 ? 80 : 110,
              left: 40,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 2100),
                child: Image.asset(
                  "assets/images/cook.png",
                  height: screenHeight < 1000 ? 390 : 550,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
