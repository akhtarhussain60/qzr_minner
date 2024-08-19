import 'package:flutter/material.dart';
import 'package:qzr_minner/src/theme.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
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
            title: const Text("FAQ",
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
            child: ListView(
             children: [
               Container(
                margin: const EdgeInsets.only(left: 20),
                 child: const Text("What is Mining ?",
                 style: TextStyle(
                  fontFamily: "BacasimeAntique",
                  color: c2,
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                 ),
                 ),
               ),
               Container(
                margin: const EdgeInsets.only(left: 20,top: 10,right: 20),
                child: const Text("Ans : The dust and noxious fumes inhaled by miners make them vulnerable to pulmonary diseases.",
                style: TextStyle(
                  fontFamily: "BacasimeAntique",
                  color: c2,
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
                ),
               )
             ],
            ),
          ),
        ),
      ),
    );
  }
}