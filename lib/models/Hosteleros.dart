class Hostelero {
  String? _idHostelero;
  String? _usuario;
  String? _correo;
  String? _telefono;
  bool? _admin;

  String? get idHostelero => this._idHostelero;

  set idHostelero(String? value) => this._idHostelero = value;

  get usuario => this._usuario;

  set usuario(value) => this._usuario = value;

  get correo => this._correo;

  set correo(value) => this._correo = value;

  get telefono => this._telefono;

  set telefono(value) => this._telefono = value;

  get admin => this._admin;

  set admin(value) => this._admin = value;

  Hostelero(this._idHostelero, this._usuario, this._correo, this._telefono,
      this._admin);
}
