class Producto {
  int? _idProducto;
  String? _nombre;
  String? _tipo;
  String? _tipoDieta;
  int? get idProducto => this._idProducto;

  set idProducto(int? value) => this._idProducto = value;

  get nombre => this._nombre;

  set nombre(value) => this._nombre = value;

  get tipo => this._tipo;

  set tipo(value) => this._tipo = value;

  get tipoDieta => this._tipoDieta;

  set tipoDieta(value) => this._tipoDieta = value;

  Producto(this._idProducto, this._nombre, this._tipo, this._tipoDieta);
}
