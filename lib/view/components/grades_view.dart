import 'package:flutter/material.dart';
import 'package:flutter_cesar_school/view/gradedetail.dart';

class Grades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      color: Colors.orange,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 3,),
            GradeItem(disciplina: 'ANDROID AVANÇADO', nota: '10', status: 'APROVADO',),
            GradeItem(disciplina: 'TÓPICOS AVANÇADOS MOBILE II', nota: '10', status: 'APROVADO',),
            GradeItem(disciplina: 'INTEGRAÇÃO CONTÍNUA', nota: '-', status: 'MATRICULADO',),
            GradeItem(disciplina: 'iOS AVANÇADO', nota: '10', status: 'APROVADO',),
            GradeItem(disciplina: 'iOS BÁSICO', nota: '10', status: 'APROVADO',),
            GradeItem(disciplina: 'METODOLOGIA CIENTÍFICA', nota: '-', status: 'MATRICULADO',),
            GradeItem(disciplina: 'ACOMPANHAMENTO TCC', nota: '-', status: 'MATRICULADO',),
          ],
        )
    );
  }
}

class GradeItem extends StatelessWidget {
  const GradeItem({
    Key key,
    @required this.disciplina,
    @required this.nota,
    @required this.status,
  }) : super(key: key);

  final String disciplina;
  final String nota;
  final String status;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        Navigator.push(context, new MaterialPageRoute(builder: (context)=>GradeDetail(disciplina, nota)));
      },
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: Image.asset("images/logo.png"),
          title: Text(disciplina),
          subtitle: Text(
              status+'\nNota:'+nota
          ),
          isThreeLine: true,
        ),
      ),
    );
  }
}


