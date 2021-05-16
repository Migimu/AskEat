import 'package:ask_and_eat/global/globals.dart';
import 'package:ask_and_eat/pages/mainPage.dart';
import 'package:ask_and_eat/widget/scanner.dart';
import 'package:flutter/material.dart';

class Carro extends StatefulWidget {
  final nombreLocal;

  Carro({Key? key, @required this.nombreLocal}) : super(key: key);

  @override
  _CarroState createState() => _CarroState(nombreLocal);
}

class _CarroState extends State<Carro> {
  var nombreLocal;

  _CarroState(var nombreLocal) {
    this.nombreLocal = nombreLocal;
  }

  @override
  Widget build(BuildContext context) {
    //COMPRUEBA SI HAY UNA IMAGEN VALIDA SI NO PONE UN PLACEHOLDER
    var imagenValida = AssetImage("images/icon.png");

    return Stack(alignment: Alignment.center, children: [
      Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height - 150,
          width: MediaQuery.of(context).size.width - 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //PREGUNTA
              SizedBox(
                height: 5,
              ),
              Align(child: Text("nombreLocal", style: TextStyle(fontSize: 20))),
              SizedBox(
                height: 5,
              ),
              /*Align(
                alignment: Alignment.center,
                child: Table(
                  children: List.generate(5, (index) {
                    return TableRow(children: [
                      Text(
                        "Nombre",
                      ),
                      Text("Contidad"),
                      TextButton(
                          onPressed: () {},
                          child: Icon(Icons.remove_shopping_cart_outlined))
                    ]);
                  }),
                ),
              ),*/
              Container(
                color: Colors.blue[100],
                height: 200,
                child: ListView.builder(
                  itemCount: carroCompra.length,
                  itemBuilder: (BuildContext context, int index) {
                    double total =
                        carroCompra[index][1] * carroCompra[index][2];
                    return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            carroCompra[index][0],
                          ),
                          Text("$total"),
                          TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title:
                                          Row(children: [Icon(Icons.warning)]),
                                      content: Text(
                                          "Seguro que quieres eliminar este elemento de tu carro?"),
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
                                            setState(() {
                                              carroCompra.removeAt(index);
                                              Navigator.of(context).pop();
                                            });
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Icon(Icons.remove_shopping_cart_outlined))
                        ]);
                  },
                ),
              ),

              SizedBox(
                height: 5,
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(children: [
                            Text("Atencion"),
                            Icon(Icons.warning)
                          ]),
                          content:
                              Text("Seguro que quieres cancelar tu pedido?"),
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
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Cancelar")),
              TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(children: [Icon(Icons.warning)]),
                          content: Text("Quiere finalizar su pedido?"),
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
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        child: Container(
                                            height: 200,
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        "El pedido se ha realizado, su pedido esta en camino!",
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                      TextButton(
                                                        child:
                                                            Icon(Icons.check),
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        MainPage()),
                                                          );
                                                        },
                                                      )
                                                    ]))),
                                      );
                                    });
                                if (direccion!.isEmpty) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EscanerQR()),
                                  );
                                }
                                //CERRAMOS PESTAÑA
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Confirmar"))
            ],
          )),
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              color: Colors.white,
              /*border: Border.all(
                color: Colors.black,
              ),*/
              borderRadius: BorderRadius.all(Radius.circular(50))),
          alignment: Alignment.center,
          child: Icon(
            Icons.shopping_cart,
            size: 60,
            //color: Colors.blue,
          ),
        ),
      ),
    ]);
  }
}
