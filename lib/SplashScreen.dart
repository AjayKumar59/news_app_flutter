import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    return Timer(const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacementNamed('/HomeScreen'));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Center(
              child: Image.asset(
                'images/news7.png',
                width: 200,
                height: 200,
              ),
            ),
            const Text(
              "India News18",
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            LoadingAnimationWidget.newtonCradle(
              color: Colors.red,
              size: 100,
            ),
            const Text("Made In India ❤️ || By Ajay Kumar"),
          ],
        ),
      ],
    ));
  }
}
