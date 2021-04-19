import 'dart:convert';

import 'package:flutter/material.dart';

class Pregunta extends StatefulWidget {
  final nombreLocal;

  Pregunta({Key? key, @required this.nombreLocal}) : super(key: key);

  @override
  _PreguntaState createState() => _PreguntaState(nombreLocal);
}

class _PreguntaState extends State<Pregunta> {
  var nombreLocal;

  _PreguntaState(var nombreLocal) {
    this.nombreLocal = nombreLocal;
  }

  @override
  Widget build(BuildContext context) {
    //COMPRUEBA SI HAY UNA IMAGEN VALIDA SI NO PONE UN PLACEHOLDER
    var imagenValida = AssetImage("images/icon.png");
    /*if (pregunta['imagen'] == "" || pregunta['imagen'] == null) {
      imagenValida = AssetImage("images/explorer.png");
    } else {
      imagenValida = Image.memory(
        base64.decode(pregunta['imagen']),
        width: 100.0,
        height: 200.0,
      );
    }*/

    return Container(
        color: Colors.white,
        height: 400,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //PREGUNTA
            SizedBox(
              height: 20,
            ),
            Align(child: Text(nombreLocal, style: TextStyle(fontSize: 20))),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              height: 200,
              width: 200,
              child: Image(image: imagenValida),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))),
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  //RESPUESTA UNO
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[300],
                          primary: Colors.black,
                          onSurface: Colors.yellow,
                          minimumSize: Size(100, 50)),
                      onPressed: () {},
                      child: Text("Casa")),

                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[300],
                          primary: Colors.black,
                          onSurface: Colors.yellow,
                          minimumSize: Size(100, 50)),
                      onPressed: () {},
                      child: Text("Bar")),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
