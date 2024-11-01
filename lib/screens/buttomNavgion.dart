import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project3/configration/app_theme.dart';
import 'package:project3/screens/cart.dart';
import 'package:project3/screens/home_screen.dart';
import 'package:project3/screens/login_screens.dart';
import 'package:project3/screens/plans_builder.dart';
import 'package:project3/screens/profile.dart';
import 'package:project3/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Buttomnavgion(),
  ));
}

class Buttomnavgion extends StatefulWidget {
  const Buttomnavgion({super.key});

  @override
  State<Buttomnavgion> createState() => _ButtomnavgionState();
}

class _ButtomnavgionState extends State<Buttomnavgion> {
  int _Selectindex = 0;
  final List<Widget> _pages = [HomeScreen(), Plansbuilder(), Cart(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _Selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_Selectindex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg"), label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/plans.svg"), label: "Plans"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/cart.svg"), label: "Cart"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/profile.svg"),
              label: " Profile"),
        ],
        currentIndex: _Selectindex,
        selectedItemColor: AppTheme.primerycolor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
