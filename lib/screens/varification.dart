import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qzr_minner/screens/bottomnavigation.dart';
import 'package:qzr_minner/src/theme.dart';

class VarificationScreen extends StatefulWidget {
  const VarificationScreen({super.key});

  @override
  State<VarificationScreen> createState() => _VarificationScreenState();
}

class _VarificationScreenState extends State<VarificationScreen> {

  TextEditingController  controller = TextEditingController(); 

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
                          child: Text("Verification",
                          style: TextStyle(
                            fontSize: 27,
                              fontFamily: "BacasimeAntique",
                               color: c2,
                               fontWeight: FontWeight.bold
                               ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Align(
                            alignment: Alignment.center,
                            child: Text("Messenger has send a code to \nverify your account",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            fontSize: 19,
                            fontFamily: "BacasimeAntique",
                             color: c2,
                             fontWeight: FontWeight.bold
                             ),
                            ),
                          ),
                          Container(
                          margin: const EdgeInsets.only(left: 25 ,top: 25),
                          alignment: Alignment.topLeft,
                          child: const Text("Email OTP",
                          style: TextStyle(
                           fontSize: 18,
                           fontFamily: "BacasimeAntique",
                           fontWeight: FontWeight.bold,
                           color: c2
                           ),
                          ),
                        ),
            Container(
              margin: const EdgeInsets.only(left: 25,right: 25,top: 15),
              child: PinCodeTextField(
               length: 5,
               appContext: context,
               controller: controller,
               cursorHeight: 16,
               keyboardType: TextInputType.number,
               boxShadows: const [
                BoxShadow(
                  color: c12,
                  blurRadius: 0.9,
                  spreadRadius: 0.5
                )
               ],
               cursorColor: c10,
               enableActiveFill: true,
               textStyle: const TextStyle(
                color: c1,
                fontSize: 18,
                fontWeight: FontWeight.w500,
               ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  // fieldWidth:40,
                  // fieldHeight: 40,
                  inactiveColor: c2,
                  selectedColor: c2,
                  activeFillColor: c2,
                  selectedFillColor: c2,
                  inactiveFillColor: c2,
                  activeColor: c2,
                ),
                onChanged: ((value) {
                }),
               ),
            ),
                  Container(
                            margin: const EdgeInsets.only(left: 60,right: 60,top: 25),
                            width: MediaQuery.of(context).size.width,
                            height: 45,
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
                                       MaterialPageRoute(builder:(context) =>  BottomNavigationScreen(tabindex: 0)),
                                        (route) => false);
                                      },
                                       child: const Text("Verify",
                                        style: TextStyle(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                          color: c2,
                                           fontFamily: "BacasimeAntique"
                                          ),
                                        ),
                                      ),
                                    ),
                                     Container(
                        margin: const EdgeInsets.only(bottom: 10,top: 25),
                        child: RichText(
                         textAlign: TextAlign.center,
                          text: const TextSpan(
                           text: "Resend : ",
                            style: TextStyle(
                             fontSize: 17,
                              fontFamily: "BacasimeAntique",
                              fontWeight: FontWeight.bold
                              ),
                              children: [
                               TextSpan(
                                text: "00:50",
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