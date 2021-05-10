import 'package:ask_and_eat/global/globals.dart';
import 'package:ask_and_eat/pages/mainPage.dart';
import 'package:ask_and_eat/widget/scanner.dart';
import 'package:flutter/material.dart';

class PantallaPago extends StatefulWidget {
  PantallaPago({Key? key, required this.direccion}) : super(key: key);
  final direccion;
  @override
  _PantallaPagoState createState() => _PantallaPagoState(direccion);
}

class _PantallaPagoState extends State<PantallaPago> {
  bool? direccionVisible;
  _PantallaPagoState(bool direccion) {
    direccionVisible = direccion;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: WillPopScope(
            child: Scaffold(
              body: Column(children: [
                Visibility(
                    visible: direccionVisible!,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                TextField(),
                                FloatingActionButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EscanerQR()),
                                    );
                                  },
                                  child: Icon(Icons.qr_code),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                    height: 200,
                    child: ListView(
                      children: listaFinal(),
                    ))
              ]),
            ),
            onWillPop: () async {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Row(
                            children: [Text("Atencion"), Icon(Icons.warning)]),
                        content: Text("Seguro que quieres cancelar tu pedido?"),
                        actions: <Widget>[
                          TextButton(
                            child: Text("No"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          //BOTON DERECHA PESTAÑA SALIR
                          TextButton(
                              child: Text("Si"),
                              onPressed: () {
                                //CERRAMOS PESTAÑA
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()),
                                );
                                pedidoActual!.listaProductos.clear();
                              })
                        ]);
                  });
              return false;
            }));
  }

  List<Widget> listaFinal() {
    List<Widget> result = List.generate(
        pedidoActual!.listaProductos.length,
        (index) => Row(children: [
              Text(
                pedidoActual!.listaProductos[index][0].nombre,
              ),
              Text(pedidoActual!.listaProductos[index][1]),
              Text("3.00€"),
            ]));
    result.insert(
        0,
        Row(children: [
          Text("Producto"),
          Text("Cantidad"),
          Text("Precio"),
        ]));
    result.insert(
        result.length,
        Row(children: [
          Text(""),
          Text("Total:"),
          Text("18.00€"),
        ]));
    return result;
  }
}
