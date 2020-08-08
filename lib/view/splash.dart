import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cesar_school/view/login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(milliseconds: 3000), (){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Login()));
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/cesaredu.png"),
            SizedBox(height: 50,),
            Platform.isAndroid?
              CircularProgressIndicator(valueColor:AlwaysStoppedAnimation<Color>(Colors.deepOrangeAccent)):
              CupertinoActivityIndicator(),
          ],
        ),
      )
    );
  }
}