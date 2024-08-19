import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qzr_minner/src/theme.dart';

class RefferalScreen extends StatefulWidget {
  const RefferalScreen({super.key});

  @override
  State<RefferalScreen> createState() => _RefferalScreenState();
}

class _RefferalScreenState extends State<RefferalScreen> {
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
            child: const Icon(Icons.arrow_back , color: golden, size: 30,)),
            title: const Text("REFERRALS",
             style: TextStyle(
              fontFamily: "BacasimeAntique",
              fontWeight: FontWeight.bold,
               fontSize: 20,
                color: golden
           ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
              c1.withOpacity(0.6),
              BlendMode.darken
               ),
        fit: BoxFit.cover,
        image: const AssetImage("assets/images/background.jpg"))
          ),
          child:  SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Lottie.asset("assets/images/invite.json",animate: true ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 25),
                  child: const Text("Get your free 10\$ Credit",
                  style: TextStyle(
                   fontFamily: "BacasimeAntique",
                   fontSize: 18,
                   color: c2,
                   fontWeight: FontWeight.bold
                   ),
                  ),
                 ),
                 Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 25),
                  child: const Text("Refferal Code",
                  style: TextStyle(
                    fontFamily: "FjallaOne",
                    fontSize: 15,
                    color: c2
                  ),
                  ),
                 ),
                 Container(
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment. centerLeft,
                  margin: const EdgeInsets.only(left: 25 ,right: 25),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: c2,
                   borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Text("GhIlS5Mw",
                  style: TextStyle(
                    fontFamily: "BacasimeAntique",
                    fontSize: 14,
                    color: c1,
                    fontWeight: FontWeight.bold
                   ),
                  ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 25),
                   child: Align(
                    alignment: Alignment.topRight,
                     child: MaterialButton(
                      height: 45,
                      minWidth: 140,
                      color: Colors.blue,
                       splashColor: Colors.transparent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30),
                       ),
                       onPressed: (){},
                       child: const Text("Copy Link",
                       style: TextStyle(
                         fontFamily: "BacasimeAntique",
                         color: c2,
                         fontSize: 16,
                         fontWeight: FontWeight.bold
                        ),
                       ),
                      ),
                   ),
                 ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 25),
                    child: const Text("Share Link Other Platform",
                    style: TextStyle(
                      fontFamily: "BacasimeAntique",
                      color: c2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                     ),
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Image.asset("assets/images/facebook.png",
                        height: 55),
                        Image.asset("assets/images/whatsapp.png",
                        height: 55),
                        Image.asset("assets/images/telegram.png",
                        height: 55),
                        Image.asset("assets/images/instagram.png",
                        height: 55),
                    ],
                   )

                //  Row(
                //   children: [
                //     Container(
                //       margin: const EdgeInsets.only(left: 10),
                //       height: 60,
                //       width: 230,
                //       decoration: BoxDecoration(
                //       gradient: const LinearGradient(colors: [c12 ,c10]),
                //       borderRadius: const BorderRadius.all(Radius.circular(12)),
                //       border: Border.all(
                //        color: c2,
                //        width: 1
                //       )
                //      ),
                //     ),
                //     Container(
                //       margin: const EdgeInsets.only(right: 10),
                //       height: 60,
                //       width: 110,
                //       decoration: BoxDecoration(
                //         gradient: const LinearGradient(colors: [c12 ,c10]),
                //         borderRadius: const BorderRadius.all(Radius.circular(12)),
                //         border: Border.all(
                //          color: c2,
                //          width: 1
                //         )
                //       ),
                //     )
                //   ],
                //  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}