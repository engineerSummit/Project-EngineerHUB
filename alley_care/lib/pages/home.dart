// ignore_for_file: camel_case_types, unnecessary_import, implementation_imports, prefer_const_constructors, avoid_unnecessary_containers

import 'package:alley_care/pages/home_page.dart';
import 'package:alley_care/pages/practice.dart';
import 'package:alley_care/pages/profile.dart';
import 'package:alley_care/pages/rehab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var idx = 0;
  final screens = [
    home_page(),
    rehab_page(),
    practice_page(),
    profile_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      body: screens[idx],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 15,
            ),
          ),
          indicatorColor: Colors.transparent,
        ),
        child: NavigationBar(
          // animationDuration: Duration(seconds: 5),
          selectedIndex: idx,
          onDestinationSelected: (idx) => setState(() {
            this.idx = idx;
          }),
          // ignore: prefer_const_literals_to_create_immutables
          destinations: [
            NavigationDestination(
              selectedIcon: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),
                ),
                child: Icon(
                  Icons.home_outlined,
                  size: 40,
                ),
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black45,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),
                ),
                child: Icon(
                  Icons.chair_outlined,
                  size: 40,
                ),
              ),
              icon: Icon(
                Icons.chair_outlined,
                color: Colors.black45,
              ),
              label: 'Rehab',
            ),
            NavigationDestination(
              selectedIcon: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),
                ),
                child: Icon(
                  Icons.settings_outlined,
                  size: 40,
                ),
              ),
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.black45,
              ),
              label: 'Practice',
            ),
            NavigationDestination(
              selectedIcon: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),
                ),
                child: Icon(
                  Icons.person_outline,
                  size: 40,
                ),
              ),
              icon: Icon(
                Icons.person_outline,
                color: Colors.black45,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
