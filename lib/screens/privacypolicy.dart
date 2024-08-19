import 'package:flutter/material.dart';
import 'package:qzr_minner/src/theme.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
            title: const Text("PRIVACY POLICY",
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
            image: const AssetImage("assets/images/background.jpg")),
          ),
          child: SafeArea(
            child:ListView(
              children: [
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
            ) 
            ),
        ),
      ),
    );
  }
}