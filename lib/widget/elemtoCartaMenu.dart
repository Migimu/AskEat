import 'package:ask_and_eat/models/Producto.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ElementoCarta extends StatefulWidget {
  ElementoCarta({Key? key, required this.producto}) : super(key: key);
  final producto;
  @override
  _ElementoCartaState createState() => _ElementoCartaState(producto);
}

class _ElementoCartaState extends State<ElementoCarta> {
  late Producto producto;
  _ElementoCartaState(Producto producto) {
    this.producto = producto;
  }
  @override
  Widget build(BuildContext context) {
    /*return Card(
      child: Row(children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [Text(producto.nombre)],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [Text("2,5 €")],
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
                    onPressed: () => {},
                  ),
                ),
              ),
              /*Container(
                              margin: EdgeInsets.all(5.0),
                              height: 40.0,
                              width: 40.0,
                              child: FittedBox(
                                child: FloatingActionButton(
                                  child: Icon(
                                    Icons.remove_shopping_cart_outlined,
                                    size: 35,
                                  ),
                                  backgroundColor: Colors.redAccent,
                                  foregroundColor: Colors.black,
                                  onPressed: () => {},
                                ),
                              ),
                            ),*/
            ],
          ),
        ),
      ]),
    );*/
    return ExpandablePanel(
      theme: ExpandableThemeData(
          iconColor: Colors.black,
          hasIcon: true,
          iconSize: 35,
          collapseIcon: Icons.add_shopping_cart_outlined,
          expandIcon: Icons.add_shopping_cart_outlined),
      header: Card(
        child: Row(children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [Text(producto.nombre)],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [Text("2,5 €")],
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
                      onPressed: () => {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
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
                    child: Text("Image.asset('images/sinLactosa.png')"),
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
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      size: 35,
                    ),
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black,
                    onPressed: () => {},
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
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      size: 35,
                    ),
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black,
                    onPressed: () => {},
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
                      onPressed: () => {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [Text("0")],
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
                      onPressed: () => {},
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
