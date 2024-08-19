import 'package:flutter/material.dart';
import 'package:qzr_minner/src/theme.dart';

class ContactusScreen extends StatefulWidget {
  const ContactusScreen({super.key});

  @override
  State<ContactusScreen> createState() => _ContactusScreenState();
}

class _ContactusScreenState extends State<ContactusScreen> {
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
            title: const Text("CONTACT US",
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
          child: SafeArea(
            child: ListView(
              children: [
                Form(
                  child: Column(
                   children: [
                   Container(
                    margin: const EdgeInsets.only(right: 25 ,left: 25 ,top: 20),
                     child: TextFormField(
                      cursorColor: c2,
                      style: const TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c2,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      decoration: const InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(
                          fontFamily: "BacasimeAntique",
                          color: c2,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: c2,
                            width: 2
                          )
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: c2,
                            width: 2
                          )
                        )
                      ),
                     ),
                   ),
                   Container(
                    margin: const EdgeInsets.only(right: 25 ,left: 25 ,top: 20),
                     child: TextFormField(
                      cursorColor: c2,
                      style: const TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c2,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      decoration: const InputDecoration(
                        floatingLabelStyle: TextStyle(
                          color: c2
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontFamily: "BacasimeAntique",
                          color: c2,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: c2,
                            width: 2
                          )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: c2,
                            width: 2
                          )
                        )
                      ),
                     ),
                   ),
                   Container(
                    margin: const EdgeInsets.only(right: 25 ,left: 25 ,top: 20),
                     child: TextFormField(
                      cursorColor: c2,
                      style: const TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c2,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      decoration: const InputDecoration(
                        floatingLabelStyle: TextStyle(
                          color: c2
                        ),
                        labelText: "Message",
                        labelStyle: TextStyle(
                          fontFamily: "BacasimeAntique",
                          color: c2,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: c2,
                            width: 2
                          )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: c2,
                            width: 2
                          )
                        )
                      ),
                     ),
                   ),
                   Container(
                    margin: const EdgeInsets.only(left: 60 ,right: 60 ,top: 30 , bottom: 10),
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(30)),
                     color: Colors.blue
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: const Text("SUBMIT",
                      style: TextStyle(
                        fontFamily: "BacasimeAntique",
                        fontWeight: FontWeight.bold,
                        color: c2,
                        fontSize: 15
                      ),
                      ),
                    ),
                   )
                   ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}