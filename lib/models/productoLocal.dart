import 'dart:ffi';

class ProductoLocal {
  int? _idProductoLocal;

  Double? _precio;
  bool? _existe;

  int? _idProducto;
  int? _idLocal;
  int? get idProductoLocal => this._idProductoLocal;

  set idProductoLocal(int? value) => this._idProductoLocal = value;

  get precio => this._precio;

  set precio(value) => this._precio = value;

  get existe => this._existe;

  set existe(value) => this._existe = value;

  get idProducto => this._idProducto;

  set idProducto(value) => this._idProducto = value;

  get idLocal => this._idLocal;

  set idLocal(value) => this._idLocal = value;

  ProductoLocal(this._idProductoLocal, this._precio, this._existe,
      this._idProducto, this._idLocal);
}
