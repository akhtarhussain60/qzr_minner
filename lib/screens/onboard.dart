// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:qzr_minner/screens/signin.dart';

// import '../src/theme.dart';

// class OnboardScreen extends StatefulWidget {
  
//   const OnboardScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<OnboardScreen> createState() => _OnboardScreenState();
// }

// class _OnboardScreenState extends State<OnboardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     final PageController controller = PageController();
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(colors: [c10, c12]),
//         ),
//         child: PageView(
//           physics: const ScrollPhysics(),
//           allowImplicitScrolling: true,
//           dragStartBehavior: DragStartBehavior.start,
//           scrollBehavior: const ScrollBehavior(androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
//           scrollDirection: Axis.horizontal,
//           pageSnapping: true,
//           restorationId: '0',
//           padEnds: true,
//           onPageChanged: (value) {
//             setState(() {
              
//             });
            
//           },
          
         
//           /// [PageView.scrollDirection] defaults to [Axis.horizontal].
//           /// Use [Axis.vertical] to scroll vertically.
//           controller: controller,
//           children: [
//             //1
//             SizedBox(
//               height: size.height,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.only(left: p16, top: 50),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(
//                           "1/3",
//                           style: TextStyle(
//                             color: c2,
//                             fontWeight: w7,
//                             fontSize: f16,
//                           ),
//                         ),
//                         MaterialButton(
//                           onPressed: (() {
//                             controller.jumpToPage(3);
//                           }),
//                           child: const Text(
//                             "Skip",
//                             style: TextStyle(color: c2, fontWeight: w7, fontSize: f16),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   Lottie.asset("assets/images/file1.json", animate: true, height: 300),

//                   const Text(
//                     'Earn Money',
//                     style: TextStyle(
//                       fontSize: f24,
//                       wordSpacing: 1,
//                       letterSpacing: 1.2,
//                       fontWeight: w7,
//                       color: c2,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),

//                   const Text(
//                     " Test Your Knowledge and Win!",
//                     style: TextStyle(
//                       color: grey,
//                       letterSpacing: 0.7,
//                       height: 1.5,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: c4, borderRadius: BorderRadius.circular(20)),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: lightgrey, borderRadius: BorderRadius.circular(20)),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: lightgrey, borderRadius: BorderRadius.circular(20)),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//             //2
//             SizedBox(
//               height: size.height,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.only(left: p16, top: 50),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(
//                           "2/3",
//                           style: TextStyle(color: c2, fontWeight: w7, fontSize: f16),
//                         ),
//                         MaterialButton(
//                           onPressed: (() {
//                             controller.jumpToPage(3);
//                           }),
//                           child: const Text(
//                             "Skip",
//                             style: TextStyle(color: c2, fontWeight: w7, fontSize: f16),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Lottie.asset(
//                     "assets/images/file2.json",
//                     animate: true,
//                     height: 300),
//                   const Text(
//                     'Crypto Wallet',
//                     style: TextStyle(
//                       fontSize: f24,
//                       wordSpacing: 1,
//                       letterSpacing: 1.2,
//                       fontWeight: w7,
//                       color: c2,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(p16),
//                     width: size.width,
//                     child: const Text(
//                       "Spread the love, and get Rewards when your friend signs up",
//                       style: TextStyle(
//                         color: grey,
//                         letterSpacing: 0.7,
//                         height: 1.5,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: lightgrey, borderRadius: BorderRadius.circular(20)),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: c4, borderRadius: BorderRadius.circular(20)),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: lightgrey, borderRadius: BorderRadius.circular(20)),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 40,
//                   ),
//                 ],
//               ),
//             ),
//             // 3
//             SizedBox(
//               height: size.height,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.only(left: p16, top: 65),
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "3/3",
//                           style: TextStyle(fontSize: 16, color: c2),
//                         ),
//                         // MaterialButton(
//                         //   onPressed: (() {
//                         //     controller.jumpToPage(3);
//                         //   }),
//                         //   child: Text(
//                         //     "Skip",
//                         //     style: TextStyle(color: c2),
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   ),
//                   Lottie.asset("assets/images/file3.json", animate: true, height: 300, width: size.width),
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   const Text(
//                     'Secure',
//                     style: TextStyle(
//                       fontSize: f24,
//                       wordSpacing: 1,
//                       letterSpacing: 1.2,
//                       fontWeight: w7,
//                       color: c2,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.all(p16),
//                     child: Text(
//                       "Easy come, easy go.",
//                       style: TextStyle(
//                         color: grey,
//                         letterSpacing: 0.7,
//                         height: 1.5,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: lightgrey, borderRadius: BorderRadius.circular(20)),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: lightgrey, borderRadius: BorderRadius.circular(20)),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 8,
//                         width: 25,
//                         decoration: BoxDecoration(color: c4, borderRadius: BorderRadius.circular(20)),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     height: 44,
//                     width: 200,
//                     decoration: BoxDecoration(
//                       gradient: const LinearGradient(colors: [c9, c10]),
//                       borderRadius: BorderRadius.circular(25),
//                       border: Border.all(color: c2,width: 1),
//                     ),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const SingninScreen()), (route) => false);
//                       },
//                       style: ElevatedButton.styleFrom(
//                         splashFactory: NoSplash.splashFactory,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20)
//                         ),
//                         backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
//                       child: const Text(
//                         'GET STARTED',
//                         style: TextStyle(
//                           color: white,
//                           fontFamily: "BacasimeAntique",
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
