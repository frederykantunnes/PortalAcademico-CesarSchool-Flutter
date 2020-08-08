import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cesar_school/view/components/finance_view.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Image.asset('images/cesaredu.png', height: 30,),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
        Stack(
        children: <Widget>[
          Container(
          height: 210.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
          ),
        ),
        Positioned(
            bottom: 150,
            left: -40,
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colors.white.withOpacity(0.3)),
            )),
        Positioned(
            top: -120,
            left: 100,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.white.withOpacity(0.3)),
            )),
        Positioned(
            top: -50,
            left: 0,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white.withOpacity(0.3)),
            )),
        Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(75),
                  color: Colors.white.withOpacity(0.2)),
            )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(800),
                  child: Image.network(
                    "https://images.pexels.com/photos/588561/pexels-photo-588561.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Frederyk Antunnes de Sousa Alves",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "frederykantunnes@gmail.com",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "(83) 99841 6414",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        )
        ],
      ),


        SizedBox(height: 16,),
        SizedBox(
          width: MediaQuery.of(context).size.width - 16,
          child: Card(
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Dados Pessoais", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 5,),
                    Text("Endereço: Rua Hermes Maia, 118"),
                    Text("Cidade: Princesa Isabel"),
                    Text("CEP: 58.755-000"),
                    Text("Data de Nascimento: 01/07/1991"),
                  ],
                ),
              )
          ),
        ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FloatingActionButton(
                      elevation: 0,
                      backgroundColor: Colors.blueGrey,
                      heroTag: 'settings',
                      child: Icon(Icons.edit),
                      onPressed: (){
                      },
                    ),
                    SizedBox(height: 5,),
                    Text('Editar')
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: <Widget>[
                    FloatingActionButton(
                      elevation: 0,
                      backgroundColor: Colors.redAccent,
                      heroTag: 'sair',
                      child: Icon(Icons.exit_to_app),
                      onPressed: (){
                        exit(0);
                      },
                    ),
                    SizedBox(height: 5,),
                    Text(' Sair ')
                  ],
                ),
              ],
            ),
      ]
    )
    )
    );
  }
}
