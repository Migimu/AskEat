import 'package:ask_and_eat/api/conexionApi.dart';
import 'package:ask_and_eat/global/globals.dart';
import 'package:ask_and_eat/widget/elemtoCartaMenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:ask_and_eat/widget/dialogCarro.dart';
import 'package:flutter/material.dart';

class carta_view extends StatefulWidget {
  carta_view({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _carta_view createState() => _carta_view();
}

class _carta_view extends State<carta_view> {
  Future<List> getProductosTodos() async {
    await API.getProductos().then((response) {
      productosList = response;
    });
    return await API.getProductosLocal().then((response) {
      productosLocalList = response;
      return response;
    });
  }

  /*Future<List> getProductosLocal() async {
    return await API.getLocales().then((response) {
      listaActual = response;
      return response;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getProductosTodos(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            List<String> tabList = ["Bebida", "Racion", "Plato"];
            List menuBebida = [];
            List menuRacion = [];
            List menuPlato = [];
            List<Widget> menusVista = [];
            for (var tabName in tabList) {
              for (var produto in productosList) {
                if (tabName.compareTo(produto["tipo"]) == 0 &&
                    tabName.compareTo("Bebida") == 0) {
                  menuBebida.add(produto);
                } else if (tabName.compareTo(produto["tipo"]) == 0 &&
                    tabName.compareTo("Racion") == 0) {
                  menuRacion.add(produto);
                } else if (tabName.compareTo(produto["tipo"]) == 0 &&
                    tabName.compareTo("Plato") == 0) {
                  menuPlato.add(produto);
                }
              }
            }

            return Scaffold(
              appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Text(widget.title),
                  centerTitle: true,
                  bottom: TabBar(tabs: [
                    Tab(
                      text: "Bebida",
                    ),
                    Tab(
                      text: "Bebida",
                    ),
                    Tab(
                      text: "Plato",
                    )
                  ])),
              body: Center(
                child: TabBarView(children: [
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
                        ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, position) {
                            return ElementoCarta(
                                producto: menuBebida[position]);
                          },
                          itemCount: menuBebida.length,
                        ),
                      ],
                    ),
                  ),
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
                        ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, position) {
                            return ElementoCarta(
                                producto: menuRacion[position]);
                          },
                          itemCount: menuRacion.length,
                        ),
                      ],
                    ),
                  ),
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
                        ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, position) {
                            return ElementoCarta(producto: menuPlato[position]);
                          },
                          itemCount: menuPlato.length,
                        ),
                      ],
                    ),
                  )
                ]),
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
                              nombreLocal: localActual["nombre"],
                            ));
                      });
                },
                child: Icon(Icons.shopping_cart_outlined),
                backgroundColor: Colors.green,
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
