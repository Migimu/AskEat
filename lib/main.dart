import 'package:ask_and_eat/listaSlider.dart';
import 'package:ask_and_eat/map.dart';
import 'package:ask_and_eat/scanner.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({
    Key? key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  final _pageOptions = [MapaBuscador(), ListaBuscador(), Opciones()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Mapa'),
          TabItem(icon: Icons.list_alt_outlined, title: 'Lista'),
          TabItem(icon: Icons.qr_code_sharp, title: 'Escaner QR')
        ],
        initialActiveIndex: 0, //optional, default as 0
        onTap: (int i) {
          setState(() {
            selectedPage = i;
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MapaBuscador extends StatefulWidget {
  MapaBuscador({Key? key}) : super(key: key);

  @override
  _MapaBuscadorState createState() => _MapaBuscadorState();
}

class _MapaBuscadorState extends State<MapaBuscador> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Mapa(),
    );
  }
}

class ListaBuscador extends StatefulWidget {
  ListaBuscador({Key? key}) : super(key: key);

  @override
  _ListaBuscadorState createState() => _ListaBuscadorState();
}

class _ListaBuscadorState extends State<ListaBuscador> {
  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListaSlider(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          //width: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(5.0))),

          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return _kOptions.where((String option) {
                return option.contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String selection) {
              print('You just selected $selection');
            },
          ),
        ),
        /*actions: [
          TextButton.icon(
            style: TextButton.styleFrom(primary: Colors.black),
            onPressed: () {},
            icon: Icon(Icons.filter_alt),
            label: Text(""),
          )
        ],*/
      ),
    );
  }
}

class Opciones extends StatefulWidget {
  Opciones({Key? key}) : super(key: key);

  @override
  _OpcionesState createState() => _OpcionesState();
}

class _OpcionesState extends State<Opciones> {
  @override
  Widget build(BuildContext context) {
    return EscanerQR();
  }
}
