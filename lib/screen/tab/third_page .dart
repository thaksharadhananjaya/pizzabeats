import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../compononts/brackgound.dart';
import '../../config.dart';

class TabThirdPage extends StatefulWidget {
  const TabThirdPage({Key key}) : super(key: key);

  @override
  State<TabThirdPage> createState() => _TabThirdPageState();
}

class _TabThirdPageState extends State<TabThirdPage> {
  final AudioPlayer player1 = AudioPlayer();
  final AudioPlayer player2 = AudioPlayer();
  final AudioPlayer player3 = AudioPlayer();
  final AudioPlayer player4 = AudioPlayer();

  Future loadMp3() async {
    await player1.setAsset('assets/mp3/level9.mp3');
    await player2.setAsset('assets/mp3/level10.mp3');
    await player3.setAsset('assets/mp3/level11.mp3');
    await player4.setAsset('assets/mp3/level12.mp3');
  }

   @override
  void dispose() {
     if (player1.playing) {
      player1.stop();
    }
    if (player3.playing) {
      player3.stop();
    }
    if (player2.playing) {
      player2.stop();
    }
    if (player4.playing) {
      player4.stop();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimeryColor2,
      body: Background(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: screenHeight < 1000 ? 230 : 290,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: screenWidth,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 300),
                child: Text(
                  "Wählt entsprechend eurem Spielniveau euer Level aus. Je niedriger das Level, desto langsamer ist der Rhythmus. Schafft ihr es, euch zum Rockmusiker hochzuspielen und das höchste Level zu meistern?",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: screenHeight < 1000 ? 18 : 22),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 1000 ? 385 : 520,
              left: 0,
              child: InkWell(
                onTap: () async {
                  await loadMp3();
                  if (player2.playing) {
                    player2.stop();
                  }
                  if (player3.playing) {
                    player3.stop();
                  }
                  if (player4.playing) {
                    player4.stop();
                  }
                  if (!player1.playing) {
                    player1.play();
                  }else{
                    player1.stop();
                  }
                },
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 500),
                  child: Image.asset(
                    "assets/images/level9.png",
                    height: screenHeight < 1000 ? 210 : 280,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 1000 ? 385 : 520,
              right: 0,
              child: InkWell(
                onTap: () async {
                  await loadMp3();
                  if (player1.playing) {
                    player1.stop();
                  }
                  if (player3.playing) {
                    player3.stop();
                  }
                  if (player4.playing) {
                    player4.stop();
                  }
                  if (!player2.playing) {
                    player2.play();
                  }else{
                    player2.stop();
                  }
                },
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 700),
                  child: Image.asset(
                    "assets/images/level10.png",
                    height: screenHeight < 1000 ? 210 : 280,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 1000 ? 170 : 230,
              left: 0,
              child: InkWell(
                onTap: () async {
                  await loadMp3();
                  if (player1.playing) {
                    player1.stop();
                  }
                  if (player2.playing) {
                    player2.stop();
                  }
                  if (player4.playing) {
                    player4.stop();
                  }
                  if (!player3.playing) {
                    player3.play();
                  }else{
                    player3.stop();
                  }
                },
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 900),
                  child: Image.asset(
                    "assets/images/level11.png",
                    height: screenHeight < 1000 ? 210 : 280,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 1000 ? 170 : 230,
              right: 0,
              child: InkWell(
                onTap: () async {
                  await loadMp3();
                  if (player1.playing) {
                    player1.stop();
                  }
                  if (player3.playing) {
                    player3.stop();
                  }
                  if (player2.playing) {
                    player2.stop();
                  }
                  if (!player4.playing) {
                    player4.play();
                  }else{
                    player4.stop();
                  }
                },
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 1100),
                  child: Image.asset(
                    "assets/images/level12.png",
                    height: screenHeight < 1000 ? 210 : 280,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 30,
              child: InkWell(
                onTap: () {},
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    "assets/images/act1.png",
                    height: screenHeight < 1000 ? 140 : 140,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 1000 ? 290 : 380,
              left: 0,
              child: InkWell(
                onTap: () {},
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    "assets/images/onion.png",
                    height: screenHeight < 1000 ? 130 : 170,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 30,
              child: InkWell(
                onTap: () {},
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    "assets/images/act1.png",
                    height: screenHeight < 1000 ? 140 : 170,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: InkWell(
                onTap: () {},
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 1500),
                  child: Image.asset(
                    "assets/images/act6.png",
                    height: screenHeight < 1000 ? 140 : 170,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight < 1000 ? 90 : 120),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    /* Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SecondPage()))); */
                  },
                  child: DelayedDisplay(
                    delay: const Duration(milliseconds: 1500),
                    child: SizedBox(
                      height: screenHeight < 1000 ?60:80,
                    ),
                  ),
                ),
              ),
            ) 
          ],
        ),
      ),
    );
  }
}
