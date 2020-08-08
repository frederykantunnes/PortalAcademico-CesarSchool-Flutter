import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cesar_school/view/home.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var list = <String>['Aluno (Graduação e Pós)', 'Professor', 'Funcionário', 'Gestor', 'Coordenador'];
  var _selectec = "Aluno (Graduação e Pós)";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orange,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    child:
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/cesaredu.png"),
                          SizedBox(height: 20,),
                          Text("Portal Acadêmico", style: TextStyle(fontSize: 20),),
                          Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: size.width - 32,
                                    child: DropdownButton<String>(
                                      items: list.map((String value) {
                                        return new DropdownMenuItem<String>(
                                          value: value,
                                          child: new Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (dado) {
                                        setState(() {
                                          _selectec = dado.toString();
                                        });
                                      },
                                      value: _selectec,
                                    ),
                                  ),
                                  Platform.isAndroid?Android_Login_Component(size: size):iOS_Login_Component(size: size),
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ),
              ],
            ),
          )
        ),
    );
  }
}

class Android_Login_Component extends StatelessWidget {
  const Android_Login_Component({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: Controller().username,
          decoration: InputDecoration(
              labelText: "Login"
          ),
        ),
        TextField(
          controller: Controller().password,
          decoration: InputDecoration(
              labelText: "Password"
          ),
          obscureText: true,
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: size.width,
          child: RaisedButton(
            child: Text('Entrar', style: TextStyle(color: Colors.white),),
            onPressed: (){
              Validate().validate(context);
            },
            color: Colors.orange,
          ),
        ),
        FlatButton(
          child: Text("Esqueceu sua senha?"),
          onPressed: (){
            Validate().popUpCreateAccout(context);

          },
        )
      ],
    );
  }
}
class iOS_Login_Component extends StatelessWidget {
  const iOS_Login_Component({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CupertinoTextField(
          placeholder: "Login",
        ),
        SizedBox(height: 10,),
        CupertinoTextField(
          placeholder: "Password",
          obscureText: true,
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: size.width,
          child: CupertinoButton.filled(
            padding: EdgeInsets.all(0),
            child: Text("Entrar"),
            onPressed: (){
              Validate().validate(context);
            },
          ),
        ),
        CupertinoButton(
          child: Text("Esqueceu sua senha?"),
          onPressed: (){
            Validate().popUpCreateAccout(context);
          },
        )
      ],
    );
  }
}

class Validate{
  void validate(BuildContext context){
//    if(Controller().username.text.length > 0 && Controller().username.text.length > 0){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
//    }
  }
  void popUpCreateAccout(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: new Text("Esqueci minha senha"),
            content: new Text("Para recuperar sua senha entre em contato com o setor administrativo do Cesar School."),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

}


class Controller{
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
}