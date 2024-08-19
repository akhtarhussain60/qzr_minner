import 'package:flutter/material.dart';
import 'package:qzr_minner/src/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List notify = [
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
    {
      "Image": "assets/images/profilepic.png",
      "text": " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
          "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back,
                color: golden,
                size: 30,
              )),
          title: const Text(
            "NOTIFICATION",
            style: TextStyle(
                fontFamily: "BacasimeAntique",
                fontSize: 20,
                color: golden,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(c1.withOpacity(0.6), BlendMode.darken),
                  fit: BoxFit.cover,
                  image: const AssetImage("assets/images/background.jpg"))),
          child: SafeArea(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            children: List.generate(
                notify.length,
                (index) => Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 15),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: c3,
                            foregroundImage:
                                AssetImage("assets/images/profilepic.png"),
                          ),
                          Text(
                            " Lorem ipsum dolor sit amet consectetur\n adipiscing elit"
                            "sed do eiusmod tempor\n incididunt ut labore et dolore magna.",
                            style: TextStyle(
                                fontFamily: "BacasimeAntique",
                                fontSize: 15,
                                color: c2),
                          )
                        ],
                      ),
                    )),
          )),
        ),
      ),
    );
  }
}
