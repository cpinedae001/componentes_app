import 'package:componentes_app/pages/alert_page.dart';
import 'package:componentes_app/providers/menu_provider.dart';
import 'package:componentes_app/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Menu de componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [], //es opcional
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return
        //   Slidable(
        //   actionPane: SlidableDrawerActionPane(),
        //   actionExtentRatio: 0.25,
        //   child: Container(
        //     color: Colors.white,
        //     child: ListView(
        //       children: _listaItems(snapshot.data, context),
        //     ),
        //   ),
        //   actions: <Widget>[
        //     IconSlideAction(
        //       caption: 'Archivo',
        //       color: Colors.blue,
        //       icon: Icons.archive,
        //       onTap: (){
        //         print('archivo');
        //       },
        //     ),
        //     IconSlideAction(
        //       caption: 'Share',
        //       color: Colors.indigo,
        //       icon: Icons.share,
        //       onTap: () => print('Share'),
        //     ),
        //   ],
        // );
          ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  // Widget _Slidable(){
  //   return Slidable(
  //     actionPane: SlidableBehindActionPane(),
  //     actionExtentRatio: 0.25,
  //     child: Container(
  //       color: Colors.red,
  //       child: _listaItems(data, context),
  //     ),
  //   );
  // }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        child: Container(
          color: Colors.white,
          child: ListTile(
            title: Text(opt['texto']),
            leading: getIcon(opt['icon']),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.pushNamed(context, opt['ruta']);
            },
          ),
        ),
        actions: [
          IconSlideAction(
            caption: 'Eliminar',
            color: Colors.red,
            icon: Icons.delete,
            onTap: ()=> print('Eliminar'),
          ),

        ],
        secondaryActions: [
          IconSlideAction(
            caption: 'Agregar',
            color: Colors.black45,
            icon: Icons.add_shopping_cart,
            onTap: () => print('More'),
          ),
          IconSlideAction(
            caption: 'Direccion',
            color: Colors.lightBlue,
            icon: Icons.add_location,
            onTap: () => print('Delete'),
          ),
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => print('Delete'),
          ),
        ],
      );
      // ListTile(
      //   title: Text(opt['texto']),
      //   leading: getIcon(opt['icon']),
      //   trailing: Icon(
      //     Icons.keyboard_arrow_right,
      //     color: Colors.red,
      //   ),
      //   onTap: () {
      //     Navigator.pushNamed(context, opt['ruta']);
      //   },
      // );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
