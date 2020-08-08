import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.orangeAccent,
      child: getGridView(context),
    );
  }
}

Widget getGridView(BuildContext context) {
  return GridView.count(
    shrinkWrap: true,
    crossAxisCount: 2,
    primary: false,
    childAspectRatio: (MediaQuery
        .of(context)
        .size
        .width - 10 / 2) / 280,
    children: <Widget>[
      createTile(0,_selectedIndex,false, 'Horários', Icons.calendar_view_day, context),
      createTile(1,_selectedIndex,true, 'Biblioteca', Icons.library_books, context),
      createTile(2,_selectedIndex,false, 'Grade Curricular', Icons.list, context),
      createTile(3,_selectedIndex,true, 'Coordenação', Icons.assignment_ind, context),
    ],
  );
}
int _selectedIndex = -1;
Widget createTile(int index,int selectedIndex,bool isEven, String title, IconData icon, BuildContext context) {

  return Padding(
    padding: EdgeInsets.only(
        left:5, right:5, top: 10, bottom: 0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: (){
          switch(index){
            case 0:
              Alerta().show(context);
              break;
            case 1:
              Alerta().show(context);
              break;
            case 2:
              Alerta().show(context);
              break;
            case 3:
              Alerta().show(context);
              break;
          }
        },
        child: Material(
          elevation: 1.0,
          color: _selectedIndex==index?Colors.lightBlueAccent:Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 20,top: 30,bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(icon,color:Colors.blueGrey, size: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:2.0),
                      child: Container(
                        height: 3.0,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: Colors.blueGrey,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class Alerta{
  void show(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: new Text("Você clicou no botão"),
            content: new Text("Função ainda não implementada, tente novamente mais tarde.\n\nEm uma próxima disciplina :)."),
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
