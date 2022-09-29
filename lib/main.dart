import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizzabeats/screen/phone/home.dart';
import 'package:pizzabeats/screen/splash.dart';
import 'package:pizzabeats/screen/tab/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Pizza Beats',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 3)),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Splas();
            }
            return MediaQuery.of(context).size.shortestSide < 600
                ? const PhoneHome()
                : const TabHome();
          }),
    );
  }
}
