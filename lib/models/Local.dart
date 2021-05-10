import 'dart:ffi';

class Local {
  String? _idLocal;
  String? _nombre;
  String? _direccion;
  Double? _latitud;
  Double? _longitud;
  String? _especialidad;
  bool? _domicilio;
  String? _idHostelero;
  String? get idLocal => this._idLocal;

  set idLocal(String? value) => this._idLocal = value;

  get nombre => this._nombre;

  set nombre(value) => this._nombre = value;

  get direccion => this._direccion;

  set direccion(value) => this._direccion = value;

  Double? get latitud => this._latitud;

  set latitud(Double? value) => this._latitud = value;

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

  factory Local.fromJson(Map<String, dynamic> parsedJson) {
    return new Local(
      parsedJson['_id'] as String,
      parsedJson['nombre'] as String,
      parsedJson['direccion'] as String,
      parsedJson['latitud'] as Double,
      parsedJson['longitud'] as Double,
      parsedJson['especialidad'] as String,
      parsedJson['domicilio'] as bool,
      parsedJson['idHostelero'] as String,
    );
  }
}
