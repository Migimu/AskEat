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
                  caption: 'Archive',
                  color: Colors.blue,
                  icon: Icons.archive,
                  onTap: () => () {},
                ),
                IconSlideAction(
                  caption: 'Share',
                  color: Colors.indigo,
                  icon: Icons.share,
                  onTap: () => () {},
                ),
              ],
              secondaryActions: [
                IconSlideAction(
                  caption: 'More',
                  color: Colors.black45,
                  icon: Icons.more_horiz,
                  onTap: () {},
                ),
                IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () {}),
              ],
            );
          }),
    );
  }
}
