import 'package:ask_and_eat/global/globals.dart';
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
          itemCount: 15,
          itemBuilder: (context, index) {
            return Column(
              children: listaSlide(),
            );
          }),
    );
  }

  List<Widget> listaSlide() {
    List<Widget> lista = List.generate(
        15,
        (index) => Slidable(
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Container(
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigoAccent,
                    child: Text('$index'),
                    foregroundColor: Colors.white,
                  ),
                  title: Text('Tile n°$index'),
                  subtitle: Text('SlidableDrawerDelegate'),
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
