import 'dart:ffi';

class Local {
  int? _idLocal;
  String? _nombre;
  String? _direccion;
  double _latitud;
  double _longitud;
  String? _especialidad;
  bool? _domicilio;
  int? _idHostelero;
  int? get idLocal => this._idLocal;

  set idLocal(int? value) => this._idLocal = value;

  get nombre => this._nombre;

  set nombre(value) => this._nombre = value;

  get direccion => this._direccion;

  set direccion(value) => this._direccion = value;

  double get latitud => this._latitud;

  set latitud(double value) => this._latitud = value;

  get longitud => this._longitud;

  set longitud(value) => this._longitud = value;

  get especialidad => this._especialidad;

  set especialidad(value) => this._especialidad = value;

  get domicilio => this._domicilio;

  set domicilio(value) => this._domicilio = value;

  get idHostelero => this._idHostelero;

  set idHostelero(value) => this._idHostelero = value;

  Local(this._idLocal, this._nombre, this._direccion, this._latitud,
      this._longitud, this._especialidad, this._domicilio, this._idHostelero);
}
