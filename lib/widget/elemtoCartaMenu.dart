import 'package:ask_and_eat/global/globals.dart';
import 'package:ask_and_eat/models/productoLocal.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ElementoCarta extends StatefulWidget {
  ElementoCarta({Key? key, required this.producto}) : super(key: key);
  final producto;
  @override
  _ElementoCartaState createState() => _ElementoCartaState(producto);
}

class _ElementoCartaState extends State<ElementoCarta> {
  var producto;
  int cont = 0;
  _ElementoCartaState(var producto) {
    this.producto = producto;
  }
  @override
  Widget build(BuildContext context) {
    var precio = 1.5;
    bool enable = true;
    for (var productoLocal in productosLocalList) {
      if (productoLocal["idProducto"] == producto["id"] &&
          productoLocal["idLocal"] == localActual["idLocal"]) {
        precio = productoLocal["precio"];
        enable = productoLocal["existe"];
      }
    }
    return ExpandablePanel(
      theme: ExpandableThemeData(
          iconColor: Colors.black,
          hasIcon: true,
          iconSize: 35,
          collapseIcon: Icons.add_shopping_cart_outlined,
          expandIcon: Icons.add_shopping_cart_outlined),
      header: Card(
        child: Container(
          height: 40,
          child: Row(children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [Text(producto["nombre"])],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [Text("$precio")],
              ),
            ),
          ]),
        ),
      ),
      collapsed: Card(
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                height: 30.0,
                width: 30.0,
                child: FittedBox(
                  child: Container(
                    child: Image.asset('images/sinLactosa.png'),
                    color: Colors.greenAccent,
                    //foregroundDecoration: Decoration(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                height: 30.0,
                width: 30.0,
                child: FittedBox(
                  child: Container(
                    child: Image.asset('images/mariscos.png'),
                    color: Colors.greenAccent,
                    //foregroundDecoration: Decoration(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                height: 30.0,
                width: 30.0,
                child: FittedBox(
                  child: Container(
                    child: Image.asset('images/gluten.png'),
                    color: Colors.greenAccent,
                    //foregroundDecoration: Decoration(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
      expanded: Card(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  height: 40.0,
                  width: 40.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.remove,
                        size: 35,
                      ),
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.black,
                      onPressed: () => {
                        setState(() {
                          if (cont > 0) {
                            cont--;
                          }
                        })
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [Text("$cont")],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  height: 40.0,
                  width: 40.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.add,
                        size: 35,
                      ),
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.black,
                      onPressed: () => {
                        setState(() {
                          if (cont < 10) {
                            cont++;
                          }
                        })
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  height: 40.0,
                  width: 40.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.add_shopping_cart_outlined,
                        size: 35,
                      ),
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.black,
                      onPressed: () {
                        carroCompra.add([producto["nombre"], precio, cont]);
                        setState(() {
                          cont = 0;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
