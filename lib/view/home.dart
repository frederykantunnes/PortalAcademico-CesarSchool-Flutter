import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cesar_school/view/components/finance_view.dart';
import 'package:flutter_cesar_school/view/components/grades_view.dart';
import 'package:flutter_cesar_school/view/components/home_view.dart';
import 'package:flutter_cesar_school/view/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndexMenu = 0;
  Widget contents = HomeView();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndexMenu = index;
      switch (_selectedIndexMenu) {
        case 0:
          contents = HomeView();
          break;
        case 1:
            contents = Grades();
          break;
        case 2:
          contents = Finance();
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/cesaredu.png', height: 30,),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_pin),
            color: Colors.blueGrey,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
            },
          )
        ],
      ),
      body: contents,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text('Notas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text('Financeiro'),
          ),
        ],
        currentIndex: _selectedIndexMenu,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}



