import 'dart:math';

import 'package:testtestest/view/setting_view.dart';
import 'package:flutter/material.dart';

import 'Home_view.dart';
import 'Map_view.dart';
import 'chat_view.dart';


class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;
  final _pages = <Widget>[
    const HomePage(),
    const MapPage(),
    const ChatPage(),
    const SettingPage(),
  ];
  void _onTapBottomItem(int value) {
    setState(() {
      _selectedIndex = value;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar:AppBar(title: Text('test',style: TextStyle(color: Colors.white),),backgroundColor: Colors.black26,),
      body:_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onTapBottomItem,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.red),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.greenAccent,
        selectedIconTheme: const IconThemeData(
          color: Colors.greenAccent,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.white
        ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,), label: 'ホーム'),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
              icon: Icon(Icons.pin_drop_outlined), label: '近くのライダー'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: 'チャット'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "マイページ"),
          //BottomNavigationBarItem(icon: Icon(Icons.person), label: 'アカウント'),
        ],
        type:BottomNavigationBarType.fixed,
      ),
    );
  }
}
