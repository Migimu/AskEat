import 'dart:collection';

import 'package:ask_and_eat/models/Producto.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//EL NOMBRE DE USUARIO DEL CLIENTE

String usuarioNombre = "Anonimo";

//EL USUARIO ACTUAL

var usuario;

//LISTA DE MARKERS

Set<Marker> markers = HashSet<Marker>();

//LISTA Locales
var listaLocalesAPI;
var listaActual;
var listaLocales = [
  ["Zuzen", "Bedidas y raciones", 1],
  ["Izadi", "Comida a domicilio", 0],
  ["Iratxo", "Bedidas y raciones", 1],
  ["Otaku", "Restaurante", 0],
  ["Gamon 14", "Comida a domicilio", 1],
  ["Gaiur", "Bedidas y raciones", 2]
];

//LISTA CARRO
List carroCompra = [];

List<Producto> dummyMenu = [
  Producto(0, "Mosto", "Bebida", ""),
  Producto(1, "Vino", "Bebida", ""),
  Producto(2, "Cerveza", "Bebida", ""),
  Producto(3, "Zumo", "Bebida", ""),
  Producto(4, "Cafe", "Bebida", "")
];

var valueCasa = false;

var valueBar = false;

bool pedidoCasa = false;

bool pedidobar = false;
