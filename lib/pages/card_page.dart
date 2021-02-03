
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[_cardTipo1(), SizedBox(height: 5), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          ListTile(
              title: Text('Soy el titulo de esta tarjeta'),
              subtitle: Text(
                  'A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.'),
              leading: Icon(Icons.photo_album)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: const Text('Cancelar'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
              FlatButton(
                child: const Text('Ok'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _cardTipo2() {
  final card = Card(

    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage('https://media-exp1.licdn.com/dms/image/C561BAQGEbvT3SFyR9Q/company-background_10000/0/1582050035728?e=2159024400&v=beta&t=xwPLRsVBBNXQQS3HN3q7hsYXmt6JxJsH6lpnbh9Y1ko'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 1000),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Cualquier cosa')
          ,
        )
      ],
    ),
  );
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.red
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );
}
