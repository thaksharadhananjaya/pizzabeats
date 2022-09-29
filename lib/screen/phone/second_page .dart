import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../compononts/brackgound.dart';
import '../../config.dart';
import 'third_page .dart';

class PhoneSecondPage extends StatefulWidget {
  const PhoneSecondPage({Key key}) : super(key: key);

  @override
  State<PhoneSecondPage> createState() => _PhoneSecondPageState();
}

class _PhoneSecondPageState extends State<PhoneSecondPage> {
  final AudioPlayer player1 = AudioPlayer();
  final AudioPlayer player2 = AudioPlayer();
  final AudioPlayer player3 = AudioPlayer();
  final AudioPlayer player4 = AudioPlayer();

  Future loadMp3() async {
    await player1.setAsset('assets/mp3/level5.mp3');
    await player2.setAsset('assets/mp3/level6.mp3');
    await player3.setAsset('assets/mp3/level7.mp3');
    await player4.setAsset('assets/mp3/level8.mp3');
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
              margin: EdgeInsets.only(top: screenHeight < 800 ? 160 : 180),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: screenWidth,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 300),
                child: Text(
                  "Wählt entsprechend eurem Spielniveau euer Level aus. Je niedriger das Level, desto langsamer ist der Rhythmus. Schafft ihr es, euch zum Rockmusiker hochzuspielen und das höchste Level zu meistern?",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: screenHeight < 800 ? 14 : 17),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 800 ? 270 : 350,
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
                    "assets/images/level5.png",
                    height:  screenHeight < 800 ? 120 :(screenHeight <850?165: 170)
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 800 ? 270 : 350,
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
                    "assets/images/level6.png",
                    height:  screenHeight < 800 ? 120 :(screenHeight <850?165: 170)
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 800 ? 140 : 170,
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
                    "assets/images/level7.png",
                    height:  screenHeight < 800 ? 120 :(screenHeight <850?165: 170)
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 800 ? 140 : 170,
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
                    "assets/images/level8.png",
                    height:  screenHeight < 800 ? 120 :(screenHeight <850?165: 170)
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 800 ? 202 : 260,
              left: 0,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 1500),
                child: Image.asset(
                  "assets/images/onion.png",
                  height: screenHeight < 800 ? 80 : 110,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 30,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 1500),
                child: Image.asset(
                  "assets/images/act3.png",
                  height: screenHeight < 800 ? 90 : 120,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 1500),
                child: Image.asset(
                  "assets/images/act4.png",
                  height: screenHeight < 800 ? 90 : 120,
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight < 800 ? 202 : 260,
              right: 0,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 1500),
                child: Image.asset(
                  "assets/images/act5.png",
                  height: screenHeight < 800 ? 80 : 110,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight < 800 ? 75 : 95),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
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
                    ;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const PhoneThirdPage())));
                  },
                  child: DelayedDisplay(
                    delay: const Duration(milliseconds: 1500),
                    child: Image.asset(
                      "assets/images/nxt_btn.png",
                      height: screenHeight < 800 ? 42 : 55,
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
