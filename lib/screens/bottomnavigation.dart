import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qzr_minner/screens/home.dart';
import 'package:qzr_minner/screens/profile.dart';
import 'package:qzr_minner/screens/refferal.dart';
import 'package:qzr_minner/screens/setting.dart';
import 'package:qzr_minner/screens/withdraw.dart';
import 'package:qzr_minner/src/theme.dart';

// ignore: must_be_immutable
class BottomNavigationScreen extends StatefulWidget {

  int tabindex;

  BottomNavigationScreen({Key? Key,required this.tabindex, super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int currentIndex = 0;
  static final List navigation =  [
    const HomeScreen(),
    const WithdrawalScreen(),
    const ProfileScreen(),
    const SettingScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: navigation[currentIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
           border: Border.all(
            color: b1,
            width: 2
           ),
          ),
          height: 47,
          width: 47,
          child: FloatingActionButton(
            elevation: 0,
            splashColor: Colors.transparent,
            backgroundColor: c2,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RefferalScreen(),));
            },
            child: Lottie.asset("assets/images/refferal.json",animate: true)
            ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        color: Theme.of(context).primaryColor.withAlpha(255),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: currentIndex,
          backgroundColor: c2,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(color: c12),
          selectedItemColor: c5,
          unselectedLabelStyle: const TextStyle(color: c6),
          iconSize: 27,
           onTap: ((value) {
             setState(() {
               currentIndex = value;
              });
            }
          ),
          items:  const [
              BottomNavigationBarItem(
              activeIcon: Icon(
              Icons.home,
              color: c5),
              icon: Icon(
              Icons.home,
              size: 25,
              color: Colors.black),
              label: "Home"
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
              Icons.wallet_rounded,
              size: 25,
              color: c5),
              icon: Icon(
              Icons.wallet_rounded,
              size: 25,
              color: Colors.black),
              label: "Withdraw"
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
              Icons.person,
              size: 25,
              color: c5),
              icon: Icon(
              Icons.person,
              size: 25,
              color: Colors.black),
              label: "Profile"
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
              Icons.settings,
              size: 25,
              color: c5),
              icon: Icon(
              Icons.settings,
              size: 25,
              color: Colors.black),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}