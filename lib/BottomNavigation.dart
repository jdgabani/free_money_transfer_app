import 'package:flutter/material.dart';
import 'ElectricPageOne.dart';
import 'ProfileGeneral.dart';
import 'Statistic.dart';
import 'WalletCards.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selected1 = 0;
  List bottom = [
    ElectricPageOne(),
    Statistic(),
    WalletCards(),
    ProfileGeneral(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottom[selected1],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selected1,
        selectedItemColor: Color(0xffFB847C),
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            selected1 = value;
          });
        },
        // elevation: 4,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gradient_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
    );
  }
}
