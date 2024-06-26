import 'package:ask_and_eat/global/globals.dart';
import 'package:ask_and_eat/pages/tab_page.dart';
import 'package:ask_and_eat/widget/scanner.dart';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ask_and_eat/api/conexionApi.dart';

class ListaSlider extends StatefulWidget {
  ListaSlider({Key? key}) : super(key: key);

  @override
  _ListaSliderState createState() => _ListaSliderState();
}

class _ListaSliderState extends State<ListaSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: listaSlide(),
            );
          }),
    );
  }

  List<Widget> listaSlide() {
    List<Widget> lista = List.generate(
        listaActual.length,
        (index) => Slidable(
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Container(
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigoAccent,
                    child: Image.asset('images/take-away.png'),
                    foregroundColor: Colors.white,
                  ),
                  title: Text(listaActual[index]["nombre"]),
                  subtitle: Text(listaActual[index]["direccion"]),
                ),
              ),
              actions: <Widget>[
                IconSlideAction(
                  caption: 'Casa',
                  color: Colors.blue,
                  icon: Icons.food_bank_outlined,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabPage()),
                    );
                  },
                ),
                IconSlideAction(
                  caption: 'Bar',
                  color: Colors.indigo,
                  icon: Icons.local_drink_outlined,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EscanerQR()),
                    );
                  },
                ),
              ],
              secondaryActions: [
                IconSlideAction(
                  caption: 'Casa',
                  color: Colors.blue,
                  icon: Icons.food_bank_outlined,
                  onTap: () => () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabPage()),
                    );
                  },
                ),
                IconSlideAction(
                  caption: 'Bar',
                  color: Colors.indigo,
                  icon: Icons.local_drink_outlined,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EscanerQR()),
                    );
                  },
                ),
              ],
            ));
    lista.insert(
        0,
        ExpandablePanel(
            header: Row(children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Filtros",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.filter_alt)
            ]),
            collapsed: Container(),
            expanded: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Checkbox(
                      value: valueCasa,
                      onChanged: (bool? value) {
                        setState(() {
                          valueCasa = value!;
                        });
                      },
                    ),
                    Text("Casa"),
                    Checkbox(
                      value: valueBar,
                      onChanged: (bool? value) {
                        setState(() {
                          valueBar = value!;
                        });
                      },
                    ),
                    Text("Bar"),
                    TextButton(
                      onPressed: () {
                        if (valueCasa && valueBar) {
                          listaActual = listaLocalesAPI;
                        } else if (valueBar) {
                          var listaMod = [];
                          for (var item in listaLocalesAPI) {
                            if (item["domicilio"] == false) {
                              listaMod.add(item);
                            }
                          }
                          listaActual = listaMod;
                        } else if (valueCasa) {
                          var listaMod = [];
                          for (var item in listaLocalesAPI) {
                            if (item["domicilio"] == true) {
                              listaMod.add(item);
                            }
                          }
                          listaActual = listaMod;
                        } else {
                          listaActual = listaLocalesAPI;
                        }
                        print(listaActual);
                        setState(() {});
                      },
                      child: Text("Aplicar"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[300]),
                    )
                  ],
                ),
                Row(
                  children: [],
                )
              ],
            )));
    return lista;
  }
}
