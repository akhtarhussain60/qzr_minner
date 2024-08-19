import 'package:flutter/material.dart';
import 'package:qzr_minner/screens/varification.dart';
import 'package:qzr_minner/src/theme.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
        body: Container(
           alignment: Alignment.center,
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                     const Align(
                          alignment: Alignment.center,
                          child: Text("Forgot Password",
                          style: TextStyle(
                            fontSize: 27,
                              fontFamily: "BacasimeAntique",
                               color: c2,
                               fontWeight: FontWeight.bold
                               ),
                              ),
                            ),
                            Container(
                          margin: const EdgeInsets.only(left: 25 ,top: 30),
                          alignment: Alignment.topLeft,
                          child: const Text("Email",
                          style: TextStyle(
                           fontSize: 18,
                           fontFamily: "BacasimeAntique",
                           fontWeight: FontWeight.bold,
                           color: c2
                           ),
                          ),
                        ),
                        Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 25,right: 25,top: 15),
                        decoration: const BoxDecoration(
                        color: c2,
                         borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: TextFormField(
                          cursorColor: golden,
                          style: const TextStyle(color: c1,
                          fontFamily: "BacasimeAntique",
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontFamily: "BacasimeAntique",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                             color: c1,
                            ),
                            prefixIcon: Icon(Icons.email,color: c1,size: 22,)
                          ),
                         ),
                        ),
                        Container(
                        margin: const EdgeInsets.only(bottom: 10,top: 15),
                        child: RichText(
                         textAlign: TextAlign.center,
                          text: const TextSpan(
                           text: "Choose Another Method           ",
                            style: TextStyle(
                             fontSize: 17,
                              fontFamily: "BacasimeAntique",
                              fontWeight: FontWeight.bold
                              ),
                              children: [
                               TextSpan(
                                text: "Need Help?",
                                //  recognizer: tapGestureRecognizer,
                                  style: TextStyle(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: "BacasimeAntique",
                                    color:Colors.amber,
                                    ),
                                  )
                                ]
                              )
                            ),
                          ),
                        Container(
                          margin: const EdgeInsets.only(left: 60,right: 60,top: 25),
                          width: MediaQuery.of(context).size.width,
                          height:45,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                                  splashColor: Colors.transparent,
                                    onPressed: (){
                                     Navigator.pushAndRemoveUntil(context, 
                                     MaterialPageRoute(builder:(context) =>  const VarificationScreen(),), 
                                     (route) => false);
                                    },
                                     child: const Text("Send OTP",
                                      style: TextStyle(
                                       fontSize: 20,
                                        color: c2,
                                        fontWeight: FontWeight.bold,
                                         fontFamily: "BacasimeAntique"
                                        ),
                                      ),
                                    ),
                                  ),
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