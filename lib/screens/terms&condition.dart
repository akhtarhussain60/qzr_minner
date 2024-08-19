import 'package:flutter/material.dart';
import 'package:qzr_minner/src/theme.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
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
            title: const Text("TERMS AND CONDITIONS",
             style: TextStyle(
              fontFamily: "BacasimeAntique",
               fontSize: 20,
                color: golden,
                fontWeight: FontWeight.bold
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
          child: ListView(
            children:  [
              Container(
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: const Text("TERMS",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontFamily: "BacasimeAntique",
                  color: c2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                 ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 15 ,right: 15,top: 20),
                  child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                  "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." 
                  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                  "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
                  "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                   "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui "
                   "officia deserunt mollit anim id est laborum.",
                   style: TextStyle(
                    fontFamily: "BacasimeAntique",
                    color: c2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                   ),
                   ),
                ),
                Container(
                margin: const EdgeInsets.only(top: 30),
                alignment: Alignment.topCenter,
                child: const Text("CONDITIONS",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontFamily: "BacasimeAntique",
                  color: c2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                 ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 15 ,right: 15,top: 20),
                  child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                  "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." 
                  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                  "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
                  "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                   "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui "
                   "officia deserunt mollit anim id est laborum.",
                   style: TextStyle(
                    fontFamily: "BacasimeAntique",
                    color: c2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                   ),
                   ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}