library geo_explorer.globals;

import 'dart:collection';

import 'package:google_maps_flutter/google_maps_flutter.dart';

//LA PUNTUACION DEL JUAGADOR

int puntuacion = 0;

//EL NOMBRE DE USUARIO DEL USUARIO

String usuarioNombre = "Anonimo";

//LA PARTIDA ACTUAL

var rutaUsuario;

//EL USUARIO ACTUAL

var usuario;

//LISTA DE MARKERS

Set<Marker> markers = HashSet<Marker>();
