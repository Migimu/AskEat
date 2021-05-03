import 'package:ask_and_eat/widget/carta_view.dart';
import 'package:ask_and_eat/pages/mainPage.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: DefaultTabController(
          length: 3,
          child: carta_view(title: 'Zuzen'),
        ),
        onWillPop: () async {
          showDialog(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              //PESTAÑA DE ADVERTENCIA PARA SALIR DE LA RUTA
              return AlertDialog(
                title: Row(children: [Text('Atencion'), Icon(Icons.warning)]),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text(
                          'Estas seguro de que quieres volver al menu de seleccion?'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Perderas todo tu carro de la compra.'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Selecciona una de las respuestas para continuar.'),
                    ],
                  ),
                ),
                //BOTON IZQUIERDA PESTAÑA SALIR
                actions: <Widget>[
                  TextButton(
                    child: Icon(Icons.check),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                  ),
                  //BOTON DERECHA PESTAÑA SALIR
                  TextButton(
                    child: Icon(Icons.clear),
                    onPressed: () {
                      //CERRAMOS PESTAÑA
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );

          return false;
        });
  }
}
