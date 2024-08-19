import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qzr_minner/screens/bottomnavigation.dart';
import 'package:qzr_minner/screens/forgetpassword.dart';
import 'package:qzr_minner/screens/signup.dart';
import 'package:qzr_minner/src/theme.dart';

class SingninScreen extends StatefulWidget {
  const SingninScreen({super.key});

  @override
  State<SingninScreen> createState() => _SingninScreenState();
}

class _SingninScreenState extends State<SingninScreen> {
  bool eyeview = true; //Eye view

  late TapGestureRecognizer tapGestureRecognizer;
  @override
  void initState() {
    super.initState();
    tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignupScreen(),
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
                        "Welcome",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "BacasimeAntique",
                            fontWeight: FontWeight.bold,
                            color: c2),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Login to your account",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "BacasimeAntique",
                            fontWeight: FontWeight.bold,
                            color: c2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, top: 20),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "BacasimeAntique",
                            fontWeight: FontWeight.bold,
                            color: c2),
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
                      margin: const EdgeInsets.only(left: 25, top: 15),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "BacasimeAntique",
                            fontWeight: FontWeight.bold,
                            color: c2),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, top: 15),
                      decoration: const BoxDecoration(
                        color: c2,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: TextFormField(
                        obscureText: eyeview,
                        cursorColor: golden,
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
                                color: c1,
                                fontWeight: FontWeight.bold),
                            prefixIcon:
                                const Icon(Icons.password, color: c1, size: 22),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    eyeview = !eyeview;
                                  });
                                },
                                child: Icon(
                                  eyeview
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: c1,
                                ))),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPassword(),
                          )),
                      child: Container(
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.only(top: 10, right: 25),
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: c2,
                              fontFamily: "BacasimeAntique"),
                        ),
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
                          // _submit();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BottomNavigationScreen(tabindex: 0),
                              ),
                              (route) => false);
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 20,
                              color: c2,
                              fontWeight: FontWeight.bold,
                              fontFamily: "BacasimeAntique"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 20),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "Don't have account? ",
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontFamily: "BacasimeAntique",
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: "Create Now",
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
                    Container(
                      margin:
                          const EdgeInsets.only(top: 30, left: 70, right: 70),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: c2),
                              child: Image.asset(
                                "assets/images/google.png",
                                height: 29,
                                width: 29,
                              )),
                          Image.asset("assets/images/instagram.png",
                              height: 40),
                          Image.asset("assets/images/facebook.png", height: 40)
                        ],
                      ),
                    )
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
