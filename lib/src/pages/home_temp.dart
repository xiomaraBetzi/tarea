import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
        children: _crearItems(context),
      ),
    );
  }

  List<Widget> _crearItems(context) {
    List<Widget> lista = new List<Widget>();
    for (String item in opciones) {
      final tempWiget = ListTile(
        title: Text(item),
        subtitle: Text('Cualquier cosa'),
        leading: Icon(Icons.accessibility),
        trailing: Icon(Icons.accessibility),
        onTap: () {
          showAlertDialog(context, item);
        },
      );
      lista.add(tempWiget);
    }
    return lista;
  }
}

showAlertDialog(BuildContext context, item) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(item),
    content: Text("Soy la iteracion: " + item),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}