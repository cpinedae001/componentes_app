import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert page',
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.blue,
          textColor: Colors.black,
          shape: StadiumBorder(),
          onPressed: () {
            _mostrarAlerta(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
            ),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de alerta'),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.red,
                    hintText: 'Enter a search term'
                ),
              ),
                FlutterLogo(size: 50.0)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
