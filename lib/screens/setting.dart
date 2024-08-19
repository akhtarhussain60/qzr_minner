import 'package:flutter/material.dart';
import 'package:qzr_minner/screens/changepassword.dart';
import 'package:qzr_minner/screens/contactus.dart';
import 'package:qzr_minner/screens/faq.dart';
import 'package:qzr_minner/screens/privacypolicy.dart';
import 'package:qzr_minner/screens/signin.dart';
import 'package:qzr_minner/screens/terms&condition.dart';
import 'package:qzr_minner/src/theme.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("SETTING",
        style: TextStyle(
          fontFamily: "BacasimeAntique",
          fontSize: 20,
          color: golden,
          fontWeight: FontWeight.bold
         ),
        ),
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
            image: const AssetImage("assets/images/background.jpg")),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                height: 85,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: c3,
                          borderRadius: BorderRadius.circular(40),
                          image: const DecorationImage(image: AssetImage("assets/images/profilepic.png"))
                        ),
                      ),
                      const VerticalDivider(color: c2, indent: 10, endIndent: 10, thickness: 1,),
                       const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("LOREM IPSUM",
                          style: TextStyle(
                            fontFamily: "FjallaOne",
                            fontSize: 16,
                             color: c2
                            ),
                          ),
                          Text("Edit Account",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: "BacasimeAntique",
                            fontSize: 15,
                            color: c2,
                            fontWeight: FontWeight.w600
                          ),
                          )
                        ],
                       ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder:(context) => const ChangePasswordScreen(), ),
                  ),
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: c2,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child:  Row(
                    children: [
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(left: 15),
                        width: 40,
                        decoration: const BoxDecoration(
                         color: f1,
                         borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child: const Center(
                          child: Icon(Icons.lock,color: c2,),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Change Password",
                      style: TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => const ContactusScreen(),)
                ),
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: c2,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    
                  ),
                  child:  Row(
                    children: [
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(left: 15),
                        width: 40,
                        decoration: const BoxDecoration(
                         color: yellow,
                         borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child: const Center(
                          child: Icon(Icons.contact_page,color: c2,),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Contact us",
                      style: TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FAQScreen(),)
                ),
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: c2,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child:  Row(
                    children: [
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(left: 15),
                        width: 40,
                        decoration: const BoxDecoration(
                         color: b1,
                         borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child: const Center(
                          child: Icon(Icons.paste_sharp,color: c2,),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("FAQ",
                      style: TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicyScreen(),)),
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: c2
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(left: 15),
                        width: 40,
                        decoration: const BoxDecoration(
                         color: b3,
                         borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child: const Center(
                          child: Icon(Icons.privacy_tip,color: c2,),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Privacy Policy",
                      style: TextStyle(
                        fontFamily: "BacasimeAntique",
                        color: c1,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                       ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TermsAndCondition(),)
                ),
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: c2
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(left: 15),
                            width: 40,
                            decoration: const BoxDecoration(
                             color: c10,
                             borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                            child: const Center(
                              child: Icon(Icons.question_mark,color: c2,),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text("Terms & Conditions",
                          style: TextStyle(
                            fontFamily: "BacasimeAntique",
                            color: c1,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 7),
                        child: const Icon(Icons.arrow_forward_ios_sharp,color: c2,))
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(left: 60,right: 60),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.blue
                ),
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context,
                     MaterialPageRoute(builder: (context) => const SingninScreen(),), 
                     (route) => false);
                  },
                  child: const Text("LOGOUT",
                  style: TextStyle(
                    fontFamily: "BacasimeAntique",
                    fontSize: 16,
                    color: c2,
                    fontWeight: FontWeight.bold
                   ),
                  ),
                ),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}