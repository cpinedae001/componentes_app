import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  @override
  _ListViewBuilderPageState createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  List<int> _listaNumeros = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index){
      final imagen = _listaNumeros[index];
      return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300?random=$imagen'));
        });
  }
}
