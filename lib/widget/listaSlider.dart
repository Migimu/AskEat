import 'package:ask_and_eat/global/globals.dart';

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
  var listaLocalesAPI;

  @override
  void initState() {
    API.getLocales().then((response) {
      listaLocalesAPI = response;
      print(listaLocalesAPI);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (listaLocalesAPI == null) {
      return CircularProgressIndicator();
    } else {
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
  }

  List<Widget> listaSlide() {
    List<Widget> lista = List.generate(
        listaLocales.length,
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
                  title: Text(listaLocales[index][0] as String),
                  subtitle: Text(listaLocales[index][1] as String),
                ),
              ),
              actions: <Widget>[
                IconSlideAction(
                  caption: 'Casa',
                  color: Colors.blue,
                  icon: Icons.food_bank_outlined,
                  onTap: () => () {},
                ),
                IconSlideAction(
                  caption: 'Bar',
                  color: Colors.indigo,
                  icon: Icons.local_drink_outlined,
                  onTap: () => () {},
                ),
              ],
              secondaryActions: [
                IconSlideAction(
                  caption: 'Casa',
                  color: Colors.blue,
                  icon: Icons.food_bank_outlined,
                  onTap: () => () {},
                ),
                IconSlideAction(
                  caption: 'Bar',
                  color: Colors.indigo,
                  icon: Icons.local_drink_outlined,
                  onTap: () => () {},
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
                          print("cambio");
                        });
                      },
                    ),
                    Text("Casa"),
                    Checkbox(
                      value: valueBar,
                      onChanged: (bool? value) {
                        setState(() {
                          valueBar = value!;
                          print("cambio2");
                        });
                      },
                    ),
                    Text("Bar"),
                    TextButton(
                      onPressed: () {
                        /*if (valueCasa && valueBar) {
                          API.getLocales();
                        } else if (valueBar) {
                          API.getLocalesByDomicilio(0);
                        } else if (valueCasa) {
                          API.getLocalesByDomicilio(1);
                        } else {
                          API.getLocales();
                        }*/
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
