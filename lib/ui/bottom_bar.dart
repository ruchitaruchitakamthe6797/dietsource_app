// ignore_for_file: prefer_const_constructors

import 'package:dietsource_app/constant/app_colors.dart';
import 'package:dietsource_app/ui/empty_page.dart';
import 'package:dietsource_app/ui/profile_page.dart';
import 'package:dietsource_app/ui/recent_transactions.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    // Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    ProfilePage(),
    ResentTransactions(),
    // EmptyPage(
    //   text: Text(''),
    // ),
    EmptyPage(
      text: Text('Transaction Page',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    ),

    EmptyPage(
        text: Text('Transaction Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
    EmptyPage(
        text: Text('Profile Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Flutter BottomNavigationBar Example'),
      //     backgroundColor: Colors.green
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(
                Icons.home,
              ),
              title: Text(''),
              backgroundColor: AppColors.appBaground,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_repair_service),
              title: Text(''),
              backgroundColor: AppColors.appBaground,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              activeIcon: Icon(
                Icons.add_box,
              ),
              title: Text(''),
              backgroundColor: AppColors.appBaground,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_sharp),
              activeIcon: Icon(
                Icons.attach_money_outlined,
              ),
              title: Text(''),
              backgroundColor: AppColors.appBaground,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              activeIcon: Icon(
                Icons.account_circle_rounded,
              ),
              title: Text(''),
              backgroundColor: AppColors.appBaground,
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.appBaground,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.buttonColor,
          unselectedItemColor: AppColors.bottomBarIconColor,
          iconSize: 35,
          onTap: _onItemTapped,
          elevation: 0),
    );
  }
}
