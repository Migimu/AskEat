import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ask_and_eat/dialogCarro.dart';

class carta_view extends StatefulWidget {
  carta_view({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _carta_view createState() => _carta_view();
}

class _carta_view extends State<carta_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        centerTitle: true,
        bottom: TabBar(
          tabs: [
            Tab(
              text: "Bebidas",
            ),
            Tab(text: "Raciones"),
            Tab(text: "Platos"),
          ],
        ),
      ),
      body: Center(
        child: TabBarView(
          children: [
            Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Productos",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blueGrey[50],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Precio",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blueGrey[50],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text(" ")],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Row(children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Coca-Cola")],
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
                  ),
                  Card(
                    child: Row(children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Mosto")],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [Text("1,95 €")],
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
                  ),
                  Card(
                    child: Row(children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Mosto")],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [Text("1,95 €")],
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
                  ),
                  Card(
                    child: Row(children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Mosto")],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [Text("1,95 €")],
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
                  ),
                  Card(
                    child: Row(children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Mosto")],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [Text("1,95 €")],
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
                  ),
                  Card(
                    child: Row(children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Mosto")],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [Text("1,95 €")],
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
                  ),
                  Card(
                    child: Row(children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Mosto")],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [Text("1,95 €")],
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
                  ),
                  Card(
                    child: Row(children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Mosto")],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [Text("1,95 €")],
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
                  ),
                  /*ListView.builder(
                    itemBuilder: (context, position) {
                      Card(
                        child: Row(
                          children: [

                          ]
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 20,
                      ),
                    },
                    itemCount: androidVersionNames.length,
                  ),*/
                ],
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Productos",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Precio",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [Text(" ")],
                          ),
                        )
                      ],
                    ),
                  ),
                  /*ListView.builder(
                    itemBuilder: (context, position) {
                      Card(
                        child: Text(),
                      );
                    },
                    itemCount: androidVersionNames.length,
                  ),*/
                ],
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Productos",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Precio",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [Text(" ")],
                          ),
                        )
                      ],
                    ),
                  ),
                  /*ListView.builder(
                    itemBuilder: (context, position) {
                      Card(
                        child: Text(),
                      );
                    },
                    itemCount: androidVersionNames.length,
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                    backgroundColor: Colors.transparent,
                    //insetPadding: EdgeInsets.all(40),
                    child: Carro(
                      nombreLocal: "Zuzen",
                    ));
              });
        },
        child: Icon(Icons.shopping_cart_outlined),
        backgroundColor: Colors.green,
      ),
    );
  }
}
