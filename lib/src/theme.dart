import 'package:flutter/material.dart';

//Colors
final Shader linearGradient = const LinearGradient(
  colors: [c4, c2],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

const Color yellow = Color(0xffFDC054);
const Color mediumYellow = Color(0xffffe082);
const Color darkYellow = Color(0xffE99E22);
const Color blurYellow = Color(0xfffdb846);
// ignore: use_full_hex_values_for_flutter_colors
const Color golden = Color(0xfffFFD700);

const Color darkGrey = Color(0xff202020);
const Color white = Color(0xffffffff);
const Color black = Colors.black;
const Color lightgrey = Color(0xffBDBDBD);
const Color grey = Color(0xff9E9E9E);
const noColor = Colors.transparent;

//button
const Color b1 = Color(0xffec3c03);
const Color b2 = Color(0xffea3c03);
const Color b3 = Color(0xffd84f10);

//color
const Color f1 = Color(0xfff48fb1);
const Color c1 = Color(0xff08091B);
const Color c2 = Color(0xffFFFFFF);
const Color c3 = Color(0xff2D5DF5);
const Color c4 = Color(0xff4158dd);
const Color c5 = Color.fromARGB(255, 17, 45, 255);

const Color c6 = Color(0xff8862dd);
const Color c7 = Color(0xffe4baeb);
const Color c8 = Color(0xff8741da);
const Color c9 = Color(0xff4158dd);
const Color c10 = Color(0xffae34d4);
const Color c11 = Color(0xff5851dc);
const Color c12 = Color(0xff684cdc);
const Color c13 = Color(0xffa488e6);
const Color c14 = Color(0xffaaa7ec);
const Color c15 = Color.fromARGB(255, 241, 207, 219);
const Color c16 = Colors.black38;

const Color c17 = Color(0xffDDFFBC);
const Color c18 = Colors.transparent;





class MyAppTheme {
  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      fontFamily: "Karla",
      // backgroundColor: whiteColor,
      scaffoldBackgroundColor: white,
      // accentColor: primaryColor,
      appBarTheme: const AppBarTheme(
          // centerTitle: true,
          backgroundColor: noColor,
          elevation: 0,
          iconTheme: IconThemeData(color: darkGrey)),
      // textTheme: MyTextTheme.textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textSelectionTheme: const TextSelectionThemeData(cursorColor: darkGrey));

// static final ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     fontFamily: "Karla",
//     backgroundColor: darkColor,
//     scaffoldBackgroundColor: darkColor,
//     accentColor: primaryColor,
//     appBarTheme: AppBarTheme(
//         centerTitle: true,
//         backgroundColor: noColor,
//         elevation: 0,
//         iconTheme: IconThemeData(color: inputTextColor)),
//     textTheme: MyTextTheme.textTheme(),
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//     textSelectionTheme: TextSelectionThemeData(cursorColor: primaryColor));
}

// class MyTextTheme {
//   static TextTheme textTheme() => TextTheme(
//       headline1: TextStyle(color: darkColor, fontSize: 24, fontWeight: FontWeight.bold),
//       headline2: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
//       headline3: TextStyle(fontWeight: FontWeight.bold, color: textBlueColor, fontSize: 27),
//       headline4: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
//       headline5: TextStyle(color: textBlueColor, fontSize: 13, fontWeight: FontWeight.w600),
//       headline6: TextStyle(color: grdiantColor1.withOpacity(0.8), fontSize: 11),
//       subtitle2: TextStyle(color: textGreyColor2, fontSize: 16, fontWeight: FontWeight.normal),
//       button: TextStyle(color: redColor, fontSize: 20, fontWeight: FontWeight.normal),
//       caption: TextStyle(color: darkColor, fontSize: 11, fontWeight: FontWeight.w500),
//       bodyText1: TextStyle(color: textBlueColor, fontSize: 19, fontWeight: FontWeight.normal),
//       bodyText2: TextStyle(color: textGreyColor, fontSize: 11));
// }

// class myContainer {
//   Container()
// }

//Font Weight
const FontWeight w9 = FontWeight.w900;
const FontWeight w8 = FontWeight.w800;
const FontWeight w7 = FontWeight.w700;
const FontWeight w6 = FontWeight.w600;
const FontWeight w5 = FontWeight.w500;
const FontWeight w4 = FontWeight.w400;
const FontWeight w3 = FontWeight.w300;

//Font size
const double f4 = 4.0;
const double f6 = 6.0;
const double f8 = 8.0;
const double f10 = 10.0;
const double f12 = 12.0;
const double f14 = 14.0;
const double f16 = 16.0;
const double f18 = 18.0;
const double f20 = 20.0;
const double f22 = 20.0;
const double f24 = 24.0;
const double f28 = 28.0;
const double f30 = 30.0;
const double f32 = 32.0;
const double f34 = 34.0;
const double f36 = 36.0;
const double f38 = 38.0;
const double f40 = 40.0;
const double f42 = 42.0;
const double heightf16 = 1.25;
const double heightf18 = 1.33;
const double heightf20 = 1.33;
const double heightf14 = 1.33;

//Padding
// const m_Padding = EdgeInsets.symmetric(horizontal: 16; vertical: 20);
const double p2 = 2.0;
const double p4 = 4.0;
const double p6 = 6.0;
const double p8 = 8.0;
const double p10 = 10.0;
const double p12 = 12.0;
const double p14 = 14.0;
const double p16 = 16.0;
const double p18 = 18.0;
const double p20 = 20.0;
const double p22 = 22.0;
const double p24 = 24.0;
const double p26 = 26.0;
const double p28 = 28.0;
const double p30 = 30.0;
const double p32 = 32.0;
const double p34 = 34.0;
const double p36 = 36.0;
const double p38 = 38.0;
const double p40 = 40.0;
const double p42 = 42.0;
const double p44 = 44.0;
// EdgeInsets m_padding = EdgeInsets.symmetric(horizontal: 16).copyWith();
