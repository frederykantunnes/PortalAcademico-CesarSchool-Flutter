import 'package:flutter/material.dart';

class Finance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
         children: <Widget>[
        FinanceItem(mes: "Junho 2020", vencimento: "10/07/2020", pagamento: "03/07/2020", valor: "R\$ 484,00",),
        FinanceItem(mes: "Julho 2020", vencimento: "10/08/2020", pagamento: "05/08/2020", valor: "R\$ 484,00",),
        FinanceItem(mes: "Agosto 2020", vencimento: "10/09/2020", pagamento: "-", valor: "R\$ 484,00",),

         ],
    )
    );
  }
}

class FinanceItem extends StatelessWidget {
  const FinanceItem({
    Key key,
    @required this.mes, this.valor, this.pagamento, this.vencimento
  }) : super(key: key);

  final String mes, vencimento, pagamento, valor;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
    child: Column(
      children: <Widget>[
        Table(
          children: [
            TableRow(
                children: [
                  TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Mês Referência"),
                            Text(mes, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: Colors.deepOrangeAccent),)
                          ],
                        ),
                      )
                  ),
                  TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Valor"),
                            Text(valor, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: Colors.grey),)
                          ],
                        ),
                      )
                  ),
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Vencimento"),
                            Text(vencimento, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),)
                          ],
                        ),
                      )
                  ),

                  TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Pago em"),
                            Text(pagamento, style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      )
                  ),
                ]
            )

          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width-10,
          height: 1,
          color: Colors.grey,
        ),
      ],
    ));
  }
}


