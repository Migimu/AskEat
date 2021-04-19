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
          itemCount: 7,
          itemBuilder: (context, index) {
            return Slidable(
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
            );
          }),
    );
  }
}
