import 'package:flutter/material.dart';
import 'package:two_poj/ui/views/dashbord/pages/cards.dart';
import 'package:two_poj/ui/views/dashbord/pages/dashbord/dashbord.dart';
import 'package:two_poj/ui/views/dashbord/pages/settings.dart';

import 'pages/wallet.dart';


class BootomNavCon extends StatefulWidget {
  @override
  State<BootomNavCon> createState() => _BootomNavConState();
}

class _BootomNavConState extends State<BootomNavCon> {
  final _pages = [
    Dashbord(),
    Wallet(),
    Cards(),
    Settings(),
  ];

  int _currntinx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF0DBE53),
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.white,
        currentIndex: _currntinx,
        onTap: (int index) {
          setState(() {
            _currntinx = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),

        ],
      ),
      body: _pages[_currntinx],
    );
  }
}
