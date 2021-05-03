import 'package:flutter/material.dart';

class Carro extends StatefulWidget {
  final nombreLocal;

  Carro({Key? key, @required this.nombreLocal}) : super(key: key);

  @override
  _CarroState createState() => _CarroState(nombreLocal);
}

class _CarroState extends State<Carro> {
  var nombreLocal;

  _CarroState(var nombreLocal) {
    this.nombreLocal = nombreLocal;
  }

  @override
  Widget build(BuildContext context) {
    //COMPRUEBA SI HAY UNA IMAGEN VALIDA SI NO PONE UN PLACEHOLDER
    var imagenValida = AssetImage("images/icon.png");

    return Stack(alignment: Alignment.center, children: [
      Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height - 150,
          width: MediaQuery.of(context).size.width - 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //PREGUNTA
              SizedBox(
                height: 5,
              ),
              Align(child: Text("nombreLocal", style: TextStyle(fontSize: 20))),
              SizedBox(
                height: 5,
              ),
              /*Align(
                alignment: Alignment.center,
                child: Table(
                  children: List.generate(5, (index) {
                    return TableRow(children: [
                      Text(
                        "Nombre",
                      ),
                      Text("Contidad"),
                      TextButton(
                          onPressed: () {},
                          child: Icon(Icons.remove_shopping_cart_outlined))
                    ]);
                  }),
                ),
              ),*/
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Nombre",
                          ),
                          Text("Contidad"),
                          TextButton(
                              onPressed: () {},
                              child: Icon(Icons.remove_shopping_cart_outlined))
                        ]);
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(onPressed: () {}, child: Text("Cancelar")),
              TextButton(onPressed: () {}, child: Text("Confirmar"))
            ],
          )),
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              color: Colors.white,
              /*border: Border.all(
                color: Colors.black,
              ),*/
              borderRadius: BorderRadius.all(Radius.circular(50))),
          alignment: Alignment.center,
          child: Icon(
            Icons.shopping_cart,
            size: 60,
            //color: Colors.blue,
          ),
        ),
      ),
    ]);
  }
}
