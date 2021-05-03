import 'package:flutter/material.dart';
import 'package:ask_and_eat/api/conexionApi.dart';

class LoginCorrect extends StatefulWidget {
  LoginCorrect({Key? key, this.cliente}) : super(key: key);
  final cliente;

  @override
  _LoginCorrectState createState() => _LoginCorrectState();
}

class _LoginCorrectState extends State<LoginCorrect> {
  var dbUser;

  @override
  void initState() {
    super.initState();
    obtenerCliente();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGUEADO")),
      body: Center(
        child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              if (dbUser == null) ...{
                CircularProgressIndicator()
              } else ...{
                Text("hola ${widget.cliente}"),
              }
              //mostrarImagen()
            ])),
      ),
    );
  }

  obtenerCliente() {
    API.getCliente(widget.cliente).then((response) {
      dbUser = response[0];
      setState(() {});
    });
  }
}
