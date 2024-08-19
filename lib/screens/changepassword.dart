import 'package:flutter/material.dart';
import 'package:qzr_minner/src/theme.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
            title: const Text("CHANGE PASSWORD",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                      margin: const EdgeInsets.only(left: 25 ,top: 20),
                       child: const Text("New Password",
                     style: TextStyle(
                     fontFamily: "BacasimeAntique",
                     color: c2,
                     fontSize: 16,
                     fontWeight: FontWeight.bold
                     ),
                    ),
                  ),
                  Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 15),
                  margin: const EdgeInsets.only(left: 25 ,right: 25 ,top: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(8)),
                   color: c2
                  ),
                  child: TextFormField(
                    obscureText: true,
                    style: const TextStyle(
                      fontFamily: "BacasimeAntique",
                        color: c1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Password",
                      suffixIcon: Icon(Icons.remove_red_eye,color: c1,),
                      hintStyle: TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25 ,top: 20),
                  child: const Text("Confirm Password",
                  style: TextStyle(
                    fontFamily: "BacasimeAntique",
                    color: c2,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 15),
                  margin: const EdgeInsets.only(left: 25 ,right: 25,top: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: c2,
                   borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    style: const TextStyle(
                      fontFamily: "BacasimeAntique",
                        color: c1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Password",
                      suffixIcon: Icon(Icons.remove_red_eye,color: c1,),
                      hintStyle: TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 60 ,right: 60 ,top: 30 ,bottom: 10),
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: const Text("CHANGE PASSWORD",
                    style: TextStyle(
                      fontFamily: "BacasimeAntique",
                       fontWeight: FontWeight.bold,
                      color: c2,
                      fontSize: 15,
                    ),
                    )
                    ),
                    )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}