import 'package:flutter/material.dart';
import 'package:qzr_minner/src/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "PROFILE",
          style: TextStyle(
              fontFamily: "BacasimeAntique",
              fontSize: 20,
              color: golden,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(c1.withOpacity(0.6), BlendMode.darken),
                fit: BoxFit.cover,
                image: const AssetImage("assets/images/background.jpg"))
            //  gradient: LinearGradient(colors: [c10,c12])
            ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.44,
                width: 230,
                decoration: const BoxDecoration(
                    color: c2,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        bottomLeft: Radius.circular(45)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan,
                        blurRadius: 1.5,
                        spreadRadius: 1.5,
                      )
                    ]),
                child: Stack(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.only(top: 25, left: 50),
                      decoration: const BoxDecoration(
                          color: c10,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, left: 74),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          color: c10,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 60, left: 55),
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: c10,
                        borderRadius: BorderRadius.all(Radius.circular(75)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.cyan,
                              blurRadius: 0.9,
                              spreadRadius: 0.6,
                              offset: Offset(1, 1))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 35, top: 55),
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                          color: c10,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      margin: const EdgeInsets.only(top: 80, left: 75),
                      decoration: const BoxDecoration(
                          color: c2,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/profilepic.png")),
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          boxShadow: [
                            BoxShadow(
                                color: c1, blurRadius: 0.9, spreadRadius: 0.6)
                          ]),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(bottom: 30, left: 30),
                      child: const Text(
                        "LOREM IPSUM",
                        style: TextStyle(
                            fontFamily: "FjallaOne", fontSize: 25, color: c10),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.cyan,
                              blurRadius: 1.5,
                              spreadRadius: 1.5)
                        ],
                        color: c2,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: const Icon(
                      Icons.messenger_outline,
                      color: c10,
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 140,
                    decoration: const BoxDecoration(
                        color: c2,
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.cyan,
                              blurRadius: 1.5,
                              spreadRadius: 1.5)
                        ]),
                    child: const Center(
                      child: Text(
                        "EDIT PROFILE",
                        style: TextStyle(
                            fontFamily: "BacasimeAntique",
                            color: c10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.cyan,
                              blurRadius: 1.5,
                              spreadRadius: 1.5)
                        ],
                        color: c2,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: const Icon(
                      Icons.share,
                      color: c10,
                    ),
                  ),
                ],
              ),
              const IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "80",
                          style: TextStyle(
                            fontFamily: "FjallaOne",
                            fontSize: 25,
                            color: c2,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "FOLLOWING",
                          style: TextStyle(
                              fontFamily: "FjallaOne",
                              fontSize: 14,
                              color: c2,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    VerticalDivider(color: c2),
                    Column(
                      children: [
                        Text("1,234",
                            style: TextStyle(
                                fontFamily: "FjallaOne",
                                fontSize: 25,
                                color: c2)),
                        SizedBox(height: 5),
                        Text(
                          "FOLLOWERS",
                          style: TextStyle(
                            fontFamily: "FjallaOne",
                            fontSize: 14,
                            color: c2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(color: c2),
                    Column(
                      children: [
                        Text(
                          "290",
                          style: TextStyle(
                              fontFamily: "FjallaOne", color: c2, fontSize: 25),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "LIKES",
                          style: TextStyle(
                              fontFamily: "FjallaOne",
                              color: c2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
