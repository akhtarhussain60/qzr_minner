import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qzr_minner/screens/signin.dart';
import 'package:qzr_minner/screens/varification.dart';
import 'package:qzr_minner/src/theme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Eye View
  bool visible = true;
  bool visible1 = true;

  late TapGestureRecognizer tapGestureRecognizer;
  @override
  void initState() {
    super.initState();
    tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SingninScreen(),
            ));
      };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(c1.withOpacity(0.6), BlendMode.darken),
                  fit: BoxFit.cover,
                  image: const AssetImage("assets/images/background.jpg"))),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Form(
                    child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "BacasimeAntique",
                            color: c2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Create a new account",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "BacasimeAntique",
                            color: c2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, left: 25),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "BacasimeAntique",
                            color: c2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, top: 10),
                      decoration: const BoxDecoration(
                        color: c2,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: TextFormField(
                        cursorColor: golden,
                        style: const TextStyle(
                          color: c1,
                          fontFamily: "BacasimeAntique",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "User Name",
                            hintStyle: TextStyle(
                              fontFamily: "BacasimeAntique",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: c1,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: c1,
                              size: 22,
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 25),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "BacasimeAntique",
                            color: c2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, top: 10),
                      decoration: const BoxDecoration(
                        color: c2,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: TextFormField(
                        cursorColor: golden,
                        style: const TextStyle(
                            color: c1,
                            fontFamily: "BacasimeAntique",
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
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
                            prefixIcon: Icon(
                              Icons.email,
                              color: c1,
                              size: 22,
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 25),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "BacasimeAntique",
                            color: c2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, top: 10),
                      decoration: const BoxDecoration(
                        color: c2,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: TextFormField(
                        obscureText: visible1,
                        cursorColor: c3,
                        style: const TextStyle(
                            color: c1,
                            fontFamily: "BacasimeAntique",
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              fontFamily: "BacasimeAntique",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: c1,
                            ),
                            prefixIcon: const Icon(
                              Icons.password,
                              color: c1,
                              size: 22,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  visible1 = !visible1;
                                });
                              },
                              child: Icon(
                                visible1
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: c1,
                              ),
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 25),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Confirm Password",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "BacasimeAntique",
                            color: c2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, top: 10),
                      decoration: const BoxDecoration(
                        color: c2,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: TextFormField(
                        obscureText: visible,
                        cursorColor: c3,
                        style: const TextStyle(
                          color: c1,
                          fontFamily: "BacasimeAntique",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Confirm Password",
                            hintStyle: const TextStyle(
                              fontFamily: "BacasimeAntique",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: c1,
                            ),
                            prefixIcon: const Icon(
                              Icons.password,
                              color: c1,
                              size: 22,
                            ),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    visible = !visible;
                                  });
                                },
                                child: Icon(
                                  visible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: c1,
                                ))),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 60, right: 60, top: 25),
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        splashColor: Colors.transparent,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VarificationScreen()),
                            // (route) => false
                          );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: c2,
                              fontFamily: "BacasimeAntique"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 25),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "Already have account?  ",
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontFamily: "BacasimeAntique",
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: "Sign In",
                                  recognizer: tapGestureRecognizer,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "BacasimeAntique",
                                    color: Colors.amber,
                                  ),
                                )
                              ])),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
