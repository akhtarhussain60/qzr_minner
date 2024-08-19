import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:qzr_minner/screens/notification.dart';
import 'package:qzr_minner/src/theme.dart';
import 'package:showcaseview/showcaseview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ShowCaseWidget(
          builder: Builder(builder: (context) => const HomeScreen1()),
        ),
      ),
    );
  }
}

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}): super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey num1 = GlobalKey();
  GlobalKey num2 = GlobalKey();
  GlobalKey num3 = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) =>
    ShowCaseWidget.of(context).startShowCase([
      num1,
      num2,
      num3
    ]));
  }


  bool isFav = true;
  // ignore: unused_field
  final double _currentvalue = 10 ;
 
   List temperatur = [
    {
      "image" : "assets/images/energy.png",
       "text" : "6/5"
    },
     {
       "image" : "assets/images/infrared.png",
        "text" : "50 \u00b0c"
    },
     {
       "image" : "assets/images/battery.png",
        "text" : "54 \u00b0c"
     },
   ];

   List list2=[
     {
      "image" : "assets/images/share.png",
      "text1" : "14 / 14",
      "text2" : "Shares",
     },
     {
      "image" : "assets/images/difficulty.png",
      "text1" : "300,100",
      "text2" : "Dificulty",
     },
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           key: _scaffoldKey,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor:Colors.transparent ,
            elevation: 0,
            title: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "Q",
                  style: TextStyle(
                   fontSize: 30,
                   color: b3,
                   fontFamily: "FjallaOne",
                  ),
                  children: [
                    TextSpan(
                      text: " Z",
                      style: TextStyle(
                        color: yellow,
                        fontSize: 20,
                        fontFamily: "FjallaOne",
                      )
                    ),
                    TextSpan(
                      text: " R",
                      style: TextStyle(
                        fontFamily: "FjallaOne",
                        fontSize: 30,
                        color: golden
                      )
                    ),
                    TextSpan(
                      text: "  MINNER",
                      style: TextStyle(
                       fontSize: 20,
                       color: f1
                      )
                    )
                  ]
               )),
               actions: [
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen(),)),
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: Showcase(
                      key: num1,
                      targetPadding: const EdgeInsets.only(right: 10,left: 10),
                      description: "Click to open the notification",
                      targetShapeBorder: const CircleBorder(),
                      child: Lottie.asset("assets/images/notification.json" , animate: true ,height: 35,width: 35))
                    ),
                )
                 ],
                ),
                body: Container( 
                 height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                      c1.withOpacity(0.6),
                       BlendMode.darken
                     ),
                    fit: BoxFit.cover,
                     image: const AssetImage("assets/images/BG2.jpg"))
                    ),
                    child:
                        SafeArea(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                Showcase(
                                  targetShapeBorder: const CircleBorder(),
                                  key: num2,
                                  description: "Your Earn money",
                                  child: Container(
                                    height: 180,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        colorFilter: ColorFilter.mode(
                                          c1.withOpacity(0.5),
                                           BlendMode.darken
                                            ),
                                          fit: BoxFit.cover,
                                          image: const AssetImage("assets/images/Bg.jpg")),
                                      borderRadius: const BorderRadius.all(Radius.circular(120)),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.cyan,
                                          blurRadius: 2,
                                          spreadRadius: 2
                                        )
                                      ]
                                    ),
                                    child: Column(
                                     children: [
                                      const SizedBox(height: 40),
                                       const Text("0.0000000",
                                      style: TextStyle(
                                       fontFamily: "FjallaOne",
                                       fontSize: 30,
                                       color: c2,
                                       ),
                                      ),
                                      const SizedBox(height: 10),
                                      RichText(
                                        text: const TextSpan(
                                          text: "Max",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: golden,
                                            fontFamily: "FjallaOne"
                                          ),
                                          children: [
                                            TextSpan(
                                              text:"   12345.0",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "FjallaOne",
                                                color: b3
                                              )
                                            ),
                                          ]
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      RichText(
                                        text: const TextSpan(
                                         text: "Avg",
                                         style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "FjallaOne",
                                          color: b3
                                         ),
                                         children: [
                                          TextSpan(
                                            text: "  67890.0",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: golden
                                            )
                                          )
                                         ]
                                        )
                                      )
                                     ],
                                    )
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: List.generate(temperatur.length, (index) => 
                                   Container(
                                     height: 50,
                                     width: 50,
                                      decoration: BoxDecoration(
                                       color : c2,
                                       borderRadius: const BorderRadius.all(Radius.circular(12)),
                                       border: Border.all(
                                        color: golden,
                                        width: 2
                                       )
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(temperatur[index]["image"],
                                          height: 25
                                          ),
                                          Text(temperatur[index]["text"],
                                          style: const TextStyle(
                                           fontSize: 14,
                                           fontFamily: "FjallaOne"
                                           ),
                                          )
                                        ],
                                      ),
                                    )
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: List.generate(list2.length, (index) => 
                                 Container(
                                  height: 90,
                                  width: 80,
                                   decoration: BoxDecoration(
                                    color:c2,
                                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                                    border: Border.all(
                                      color: golden,
                                      width: 2
                                    )
                                   ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(list2[index]["image"],
                                        height: 40),
                                        Text(list2[index]["text1"],
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontFamily: "FjallaOne",
                                          color: c1
                                        ),
                                        ),
                                        Text(list2[index]["text2"],
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontFamily: "FjallaOne",
                                          color: c1
                                        ),
                                        )
                                      ],
                                    ),
                                  )
                                 ),
                                ),
                                 LinearPercentIndicator(
                                  padding: const EdgeInsets.only(left: 20 ,right: 20),
                                  width: MediaQuery.of(context).size.width,
                                   animation: true,
                                   lineHeight: 18,
                                   animationDuration: 10000,
                                   percent: 0.9,
                                   center: const Text("100.0 %",
                                   style: TextStyle(
                                    fontFamily: "FjallaOne",
                                    color: c1
                                   ),
                                  ),
                                   backgroundColor: c2,
                                   progressColor: Colors.yellowAccent,
                                   barRadius: const Radius.circular(10),
                                  ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(left: 60,right: 60),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                color: Colors.blue
                                ),
                                 child: Showcase(
                                targetShapeBorder: const CircleBorder(),
                                key: num3,
                                description: "Click To Stop & Pause Minning",
                                 child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    isFav
                                      ? MaterialButton(
                                        splashColor: Colors.transparent,
                                        height: 45,
                                        minWidth: MediaQuery.of(context).size.width,
                                        shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(28)
                                        ),
                                       child: const Text("PAUSE MINNER" , style: TextStyle(
                                         color: c2,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                           fontFamily: "BacasimeAntique")), // fav
                                           onPressed: () {
                                            setState(() {
                                             isFav = !isFav;
                                             });
                                            },
                                           )
                                            : Container(),
                                             !(isFav)
                                              ? MaterialButton(
                                                height: 45,
                                                splashColor: Colors.transparent,
                                                minWidth: MediaQuery.of(context).size.width,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(28)
                                                ),
                                               child: const Text("STOP MINNER" , style: TextStyle(
                                                color: c2,
                                                 fontSize: 15,
                                                 fontWeight: FontWeight.bold,
                                                  fontFamily: "BacasimeAntique")),  // not fav
                                                  onPressed: () {
                                                   setState(() {
                                                    isFav = !isFav;
                                                  });
                                                },
                                              )
                                               : Container(),
                                              ],
                                            ),
                                            ),
                                        ),
                                         const SizedBox(height: 15),
                                        ],
                                      ),
                                    ),                         
          ),
        );
  }
}