class Clientes {
  String? _idCliente;
  String? _usuario;
  String? _correo;
  String? _telefono;
  String? _direccion;
  List<String>? _gustos;
  String? _dieta;

  String? get idCliente => this._idCliente;

  set idCliente(String? value) => this._idCliente = value;

  String? get usuario => this._usuario;

  set usuario(String? value) => this._usuario = value;

  get correo => this._correo;

  set correo(value) => this._correo = value;

  get telefono => this._telefono;

  set telefono(value) => this._telefono = value;

  get direccion => this._direccion;

  set direccion(value) => this._direccion = value;

  get gustos => this._gustos;

  set gustos(value) => this._gustos = value;

  get dieta => this._dieta;

  set dieta(value) => this._dieta = value;

  Clientes(this._usuario, this._correo, this._telefono, this._direccion,
      this._gustos, this._dieta);
}
