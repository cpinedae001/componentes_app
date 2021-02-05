import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 200.0;
  bool _bloquerCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwicth(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valorSlider,
      min: 200.0,
      max: 600.00,
      onChanged: (_bloquerCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.annihil.us/u/prod/marvel/images/OpenGraph-TW-1200x630.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _bloquerCheck,
    //   onChanged: (valor){
    //     _bloquerCheck = valor;
    //     setState(() {
    //
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquerCheck,
      onChanged: (valor) {
        _bloquerCheck = valor;
        setState(() {});
      },
    );
  }

  Widget _crearSwicth() {
    return SwitchListTile(
      title: Text('Swicht'),
      value: _bloquerCheck,
      onChanged: (valor) {
        _bloquerCheck = valor;
        setState(() {});
      },
    );
  }
}
