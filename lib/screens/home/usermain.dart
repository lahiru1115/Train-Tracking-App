import 'package:flutter/material.dart';
import 'package:kdu_gpsd_app_driver/screens/home/menu.dart';
import 'package:kdu_gpsd_app_driver/sub_screens/reset_password.dart';
import 'package:kdu_gpsd_app_driver/sub_screens/profile.dart';

class UserMain extends StatefulWidget {
  const UserMain({Key? key}) : super(key: key);

  @override
  _UserMain createState() => _UserMain();
}

class _UserMain extends State<UserMain> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOption = <Widget>[
    Menu(),
    Profile(),
    ResetPassword(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'ChangePassword'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
