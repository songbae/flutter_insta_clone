import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/account_page.dart';
import 'package:flutter_insta_clone/home_page.dart';
import 'package:flutter_insta_clone/search_page.dart';
class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex=0;
  List _pages=[
    HomePage(),
    SearchPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
       BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label:'Account'),
      ]),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex=value;
    });
  }
}
