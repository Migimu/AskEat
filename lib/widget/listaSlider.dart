import 'package:ask_and_eat/api/conexionApi.dart';
import 'package:ask_and_eat/global/globals.dart';
import 'package:ask_and_eat/models/Local.dart';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
            /*children: [
              FutureBuilder(
                future: API.getLocales(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  print("Datos " + snapshot.data.toString());
                  return Slidable(
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
                        title: Text(snapshot.data.nombre),
                        subtitle: Text(snapshot.data.especialidad),
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
                  );
                },
              ),
            ],*/
          );
        },
      ),
    );
  }

  List<Widget> listaSlide() {
    List<Widget> lista = List.generate(
        listaLocales2.length,
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
                  title: Text(listaLocales2[index] as String),
                  subtitle: Text(listaLocales2[index] as String),
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
                      onPressed: () {},
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
