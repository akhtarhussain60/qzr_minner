import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qzr_minner/screens/signin.dart';
import 'package:qzr_minner/src/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SingninScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(c1.withOpacity(0.6), BlendMode.darken),
                fit: BoxFit.cover,
                image: const AssetImage("assets/images/background.jpg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/cubes.png",
              height: 250,
              width: 250,
            ),
            const SizedBox(height: 15),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "Q",
                    style: TextStyle(
                      fontSize: 40,
                      color: b3,
                      fontFamily: "FjallaOne",
                    ),
                    children: [
                      TextSpan(
                          text: " Z",
                          style: TextStyle(
                            color: yellow,
                            fontSize: 30,
                            fontFamily: "FjallaOne",
                          )),
                      TextSpan(
                          text: " R",
                          style: TextStyle(
                              fontFamily: "FjallaOne",
                              fontSize: 40,
                              color: golden)),
                      TextSpan(
                          text: "  MINNER",
                          style: TextStyle(fontSize: 30, color: f1))
                    ]))
          ],
        ),
      ),
    );
  }
}