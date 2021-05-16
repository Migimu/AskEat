import 'dart:async';
import 'dart:collection';
import 'package:ask_and_eat/widget/dialogMarker.dart';
import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../global/globals.dart';
import '../global/globals.dart';
import '../global/globals.dart';
import '../global/globals.dart';
import '../models/Local.dart';

class Mapa extends StatefulWidget {
  /*final List localizaciones;*/

  Mapa({Key? key /*, required this.localizaciones*/}) : super(key: key);

  @override
  _MapaState createState() => _MapaState(/*localizaciones*/);
}

class _MapaState extends State<Mapa> {
  var localizaciones = [];
  MapType _defaultMapType = MapType.normal;
  bool _isVisible = false;
  BitmapDescriptor pinLocationIcon =
      BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan);
  bool seguir = false;
  var imagenValida;

  _MapaState(/*List localizaciones*/) {
    /*this.localizaciones = localizaciones;*/
  }

  CameraPosition _initialPosition = CameraPosition(
      target: LatLng(43.3141039075075, -1.883062156365791), zoom: 11);
  Completer<GoogleMapController> _controller = Completer();
  Set<Circle> _circles = HashSet<Circle>();
  Set<Polyline> _polylines = HashSet<Polyline>();
  Set<Marker> _markers = HashSet<Marker>();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  //Position _currentPosition = [0, 0, 0, 0] as Position;

  @override
  void initState() {
    super.initState();
    /*_getRutasUsuario();*/
    //_setCircles();
    //_goToTheUser();
    //_distanceFromCircle();
    //_updatePosition();
    //_updatePositions();
    _setMarkers();
  }
  //OBTENER POSICION ACTUAL

  /*Future<Position> _getCurrentLocation() async {
    return Future(() {
      return Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
    });
  }*/

  //CAMARA VA A EL USUARIO

  /*Future<void> _goToTheUser() async {
    _currentPosition = await _getCurrentLocation();

    LatLng latLngPosition =
        LatLng(_currentPosition.latitude, _currentPosition.longitude);

    CameraPosition cameraPosition =
        new CameraPosition(target: latLngPosition, zoom: 14);
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }*/

  //CAMARA SIGUE A EL USUARIO

  /*Future<void> _followUser() async {
    while (seguir) {
      _currentPosition = await _getCurrentLocation();
      LatLng latLngPosition =
          LatLng(_currentPosition.latitude, _currentPosition.longitude);

      CameraPosition cameraPosition =
          new CameraPosition(target: latLngPosition, zoom: 16);
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    }
  }*/

  //CALCULA LAS DISTANCIAS DESDE LOS PUNTOS MAS CARCANOS

  /*Future<void> _distanceFromCircle() async {
    _currentPosition = await _getCurrentLocation();

    var cont = 0;

    for (var circulo in Set.from(_circles)) {
      var distancia = Geolocator.distanceBetween(
          _currentPosition.latitude,
          _currentPosition.longitude,
          circulo.center.latitude,
          circulo.center.longitude);

      pinLocationIcon = BitmapDescriptor.hueAzure as BitmapDescriptor;

      pinAnswered = BitmapDescriptor.hueGreen as BitmapDescriptor;

      if (distancia < 50) {
        setState(() {
          //SI ESTA DENTRO DEL CICULO SE MUSTRA EL ICONO

          markers.add(Marker(
              markerId: MarkerId("Ori$cont"),
              position: circulo.center,
              consumeTapEvents: false,
              icon: pinLocationIcon,
              zIndex: 1,
              onTap: () async {
                for (var localizacion in localizaciones) {
                  if (localizacion['latitud'] == circulo.center.latitude ||
                      localizacion['longitud'] == circulo.center.longitude) {
                    //AÑADE NUEVO MARKER INDICANDO QUE SE HA RESPONDIDIO A LA RESPUESTA
                    markers.add(Marker(
                        markerId: MarkerId("Bien$cont"),
                        position: circulo.center,
                        consumeTapEvents: false,
                        icon: pinAnswered,
                        zIndex: 5,
                        onTap: () {}));

                    //BORRA EL PRIMER MARKER
                    markers.retainWhere((element) =>
                        element.markerId.value.contains("Bien") ||
                        element.markerId.value.contains("User"));
                  }
                  cont++;
                }
              }));
        });

        break;
      } else {
        //SI TE ALEJAS DEL CICULO SE OCULTA EL ICONO A NO SER QUE SE HALLA RESPONDIDIO
        setState(() {
          _isVisible = false;
          markers.retainWhere((element) =>
              element.markerId.value.contains("Bien") ||
              element.markerId.value.contains("User"));
        });
      }
    }*/
//SI SE DEJA DE JUGAR DEJA DE BUSCAR LA LOCALIZACION MAS CERCANA
  /*if (jugando) {
      _distanceFromCircle();
    }
}*/

//CAMBIA LA APARIENCIA DEL MAPA
/*void _changeMapType() {
    setState(() {
      _defaultMapType = _defaultMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }*/

//MUESTRA LOS CICULOS EN EL MAPA Y LAS LINEAS
  /*void _setCircles() {
    var cont = 0;
    List<LatLng> _puntos = [];
    for (var localizacion in localizaciones) {
      //var json = jsonDecode(localizacion);
      setState(() {
        _circles.add(Circle(
            circleId: CircleId("$cont"),
            center: LatLng(localizacion["latitud"], localizacion["longitud"]),
            radius: 50,
            zIndex: 0,
            visible: false));
        _puntos.add(LatLng(localizacion["latitud"], localizacion["longitud"]));
      });
      cont++;
    }
  }*/

//CALCULA LAS DISTANCIAS DESDE LOS PUNTOS MAS CARCANOS

  void _setMarkers() {
    /* var cont = 0;

    for (var circulo in Set.from(_circles)) {
      var distancia = Geolocator.distanceBetween(
          _currentPosition.latitude,
          _currentPosition.longitude,
          circulo.center.latitude,
          circulo.center.longitude);

      pinLocationIcon = BitmapDescriptor.hueAzure as BitmapDescriptor;

      pinAnswered = BitmapDescriptor.hueGreen as BitmapDescriptor;

      if (distancia < 50) {*/

    setState(() {
      //for (dynamic local in listaActual) {
      for (int i = 0; i < listaActual.length; i++) {
        print(listaActual[i]["nombre"]);
        if (!listaActual[i]["domicilio"]) {
          pinLocationIcon =
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange);
        }
        _markers.add(Marker(
            markerId: MarkerId(listaActual[i]["nombre"]),
            position:
                LatLng(listaActual[i]["latitud"], listaActual[i]["longitud"]),
            consumeTapEvents: false,
            icon: pinLocationIcon,
            zIndex: 1,
            onTap: () {
              localActual = listaActual[i];
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                        backgroundColor: Colors.transparent,
                        //insetPadding: EdgeInsets.all(40),
                        child: Pregunta(
                          nombreLocal: listaActual[i]["nombre"],
                        ));
                  });
            }));
      }
      /*_markers.add(Marker(
          markerId: MarkerId("Bar"),
          position: LatLng(43.3181039075075, -1.883062156365791),
          consumeTapEvents: false,
          icon: pinLocationIcon,
          zIndex: 1,
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                      backgroundColor: Colors.transparent,
                      //insetPadding: EdgeInsets.all(40),
                      child: Pregunta(
                        nombreLocal: "Zuzen",
                      ));
                });
          }));*/
    });
  }
  /*break;
      } else {
        //SI TE ALEJAS DEL CICULO SE OCULTA EL ICONO A NO SER QUE SE HALLA RESPONDIDIO
        setState(() {
          _isVisible = false;
          markers.retainWhere((element) =>
              element.markerId.value.contains("Bien") ||
              element.markerId.value.contains("User"));
        });
      }
    }*/
//SI SE DEJA DE JUGAR DEJA DE BUSCAR LA LOCALIZACION MAS CERCANA
  /*if (jugando) {
      _distanceFromCircle();
    }
}*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Buscador",
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            //WIDGET MAPA
            child: GoogleMap(
              //myLocationEnabled: true,
              /*onMapCreated: _onMapCreated,*/
              initialCameraPosition: _initialPosition,
              markers: _markers,
              //circles: _circles,
              mapToolbarEnabled: false,
              mapType: _defaultMapType,
              //myLocationButtonEnabled: false,
            ),
          ),

          /*Container(
            margin: EdgeInsets.only(top: 20, right: 10),
            alignment: Alignment.topRight,
            child: Column(children: <Widget>[
              //BOTON CAMBIAR APARIENCIA MAPA
              FloatingActionButton(
                  heroTag: 'map',
                  child: Icon(Icons.layers),
                  elevation: 5,
                  backgroundColor: Colors.teal[200],
                  onPressed: () {
                    _changeMapType();
                  }),
              SizedBox(
                height: 10,
              ),
              //BOTON PARA SEGUIR A EL USUARIO
              FloatingActionButton(
                  heroTag: 'follow',
                  child: Icon(Icons.my_location),
                  elevation: 5,
                  backgroundColor: Colors.teal[200],
                  onPressed: () {
                    if (seguir) {
                      seguir = false;
                    } else {
                      seguir = true;
                      _followUser();
                    }
                  }),
            ]),
          ),*/
          //TEXTO DE LO HAS ENCONTRADO
        ],
      ),
    );
  }
}
