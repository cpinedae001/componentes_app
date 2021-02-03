import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes app'),
      ),
      body:
      //ListView(children: _crearItems()),
      ListView(
        children: _crearItemsShort(),
      )
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(Divider(
          height: 0.5,
          color: Colors.red,
        ));
    }
    return lista;
  }

  List<Widget> _crearItemsShort() {
   return opciones.map((e){
     return Column(
       children: <Widget>[
         ListTile(
           title: Text(e),
           subtitle: Text('Numeros'),
           leading: Icon(Icons.autorenew),
           trailing: Icon(Icons.arrow_forward_ios),
           onTap: (){},
         ),
         Divider(
           height: 0.5,
         )
       ],
     );
   }).toList();

  }
}
