import 'package:flutter/material.dart';
import 'package:qzr_minner/src/theme.dart';

class WithdrawalScreen extends StatefulWidget {
  const WithdrawalScreen({super.key});

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  String selectedContainerText = "";
  String selectedContainerText1 = "";
  String selectedContainerText2 = "";

  void onTapContainer(String text) {
    setState(() {
      selectedContainerText = text;
    });

    setState(() {
      selectedContainerText1 = text;
    });

    setState(() {
      selectedContainerText2 = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "WITHDRAWAL",
          style: TextStyle(
              fontFamily: "BacasimeAntique",
              fontSize: 20,
              color: golden,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(c1.withOpacity(0.6), BlendMode.darken),
                fit: BoxFit.cover,
                image: const AssetImage("assets/images/background.jpg"))),
        child: SafeArea(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 70,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: c2,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "BALANCE",
                      style: TextStyle(
                          fontFamily: "BacasimeAntique",
                          color: c1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "QZR  4000.0",
                      style: TextStyle(
                          fontFamily: "FjallaOne", color: c1, fontSize: 19),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 25, left: 25),
                child: const Text(
                  "AMOUNT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "BacasimeAntique",
                      color: c2,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: c2),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: golden,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: c1,
                      fontFamily: "FjallaOne",
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Amount",
                      hintStyle: TextStyle(
                        fontFamily: "BacasimeAntique",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: c1,
                      ),
                      prefixIcon: Icon(Icons.attach_money)),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: const Text(
                  "Select withdraw method",
                  style: TextStyle(
                      fontFamily: "BacasimeAntique",
                      color: c2,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      onTapContainer("TRX Adress");
                    },
                    child: Container(
                      height: 90,
                      width: 80,
                      decoration: BoxDecoration(
                          color: selectedContainerText == "TRX Adress"
                              ? c2
                              : Colors.black12,
                          border: selectedContainerText == "TRX Adress"
                              ? Border.all(color: c5, width: 2)
                              : Border.all(color: c2, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/trx.png", height: 40),
                          Text(
                            "TRX",
                            style: TextStyle(
                                fontFamily: "BacasimeAntique",
                                color: selectedContainerText == "TRX Adress"
                                    ? c1
                                    : c2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedContainerText1 == "DOGE Adress";
                    },
                    child: Container(
                      height: 90,
                      width: 80,
                      decoration: BoxDecoration(
                          color: selectedContainerText1 == "DOGE Adress"
                              ? c2
                              : Colors.black12,
                          border: selectedContainerText1 == "DOGE Adress"
                              ? Border.all(color: c5, width: 2)
                              : Border.all(color: c2, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/doge.png", height: 40),
                          Text(
                            "DOGE",
                            style: TextStyle(
                                fontFamily: "BacasimeAntique",
                                color: selectedContainerText1 == "DOGE Adress"
                                    ? c1
                                    : c2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedContainerText2 == "PEPE Adress";
                    },
                    child: Container(
                      height: 90,
                      width: 80,
                      decoration: BoxDecoration(
                          color: selectedContainerText2 == "PEPE Adress"
                              ? c2
                              : Colors.black12,
                          border: selectedContainerText2 == "PEPE Adress"
                              ? Border.all(color: c5, width: 2)
                              : Border.all(color: c2, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/images/pepe.png",
                            height: 37,
                          ),
                          Text(
                            "PEPE",
                            style: TextStyle(
                                fontFamily: "BacasimeAntique",
                                color: selectedContainerText2 == "PEPE Adress"
                                    ? c1
                                    : c2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  selectedContainerText1,
                  style: const TextStyle(
                      fontFamily: "FjallaOne", color: c2, fontSize: 14),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                decoration: const BoxDecoration(
                  color: c2,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const TextField(
                  style: TextStyle(
                      color: c1,
                      fontFamily: "BacasimeAntique",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Adress",
                      hintStyle: TextStyle(
                        fontFamily: "BacasimeAntique",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: c1,
                      )),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: const Text(
                  "Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "BacasimeAntique",
                      color: c2,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                decoration: const BoxDecoration(
                  color: c2,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const TextField(
                  style: TextStyle(
                      color: c1,
                      fontFamily: "BacasimeAntique",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Email",
                      hintStyle: TextStyle(
                        fontFamily: "BacasimeAntique",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: c1,
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60, top: 25),
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
                  onPressed: () {},
                  child: const Text(
                    "Withdraw",
                    style: TextStyle(
                        fontSize: 20,
                        color: c2,
                        fontWeight: FontWeight.bold,
                        fontFamily: "BacasimeAntique"),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        )),
      ),
    );
  }
}
