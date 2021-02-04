import 'package:flutter/material.dart';

class InputPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InputPagesStateful();
  }
}

class InputPagesStateful extends State<InputPages> {
  String _nombre = '';
  String _fecha = '';
  String _opcionSelect = 'volar';
  TextEditingController _inputFielDateController = new TextEditingController();
  List<String> _poderes = ['volar', 'Rayos X', 'Super aliento', 'Super fuerza'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearPersona(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'nombre',
          labelText: 'Nombre de la persona',
          helperText: 'Solo nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          print(_nombre);
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          print(_nombre);
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.remove_red_eye),
          icon: Icon(Icons.lock)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          print(_nombre);
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFielDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Fecha',
          labelText: 'Fecha',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1990),
        lastDate: new DateTime(2025));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFielDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      children: [
        Icon(Icons.select_all,),
        Container(
          color: Colors.lightGreen,
          child: DropdownButton(
            value: _opcionSelect,
            items: getOpcionesDropdown(),
            onChanged: (valor) {
              print(valor);
              setState(() {
                _opcionSelect = valor;
              });
            },
          ),
        )
      ],
    );
  }
}
