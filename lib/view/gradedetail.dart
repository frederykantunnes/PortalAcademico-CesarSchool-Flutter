import 'package:flutter/material.dart';

class GradeDetail extends StatelessWidget {

  final String nota;
  final String disciplina;
  GradeDetail(this.disciplina, this.nota);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title:  Image.asset('images/cesaredu.png', height: 30,),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(disciplina, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),),
            Text(nota, style: TextStyle(fontSize: 100, fontWeight: FontWeight.w300, color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
