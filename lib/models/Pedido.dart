class Pedido {
  int? _idPedido = 0;
  DateTime? _fechaEntregaPrevista;
  DateTime? _fechaEntrega;
  DateTime? _fechaPedidoRealizado;
  String? _destino;
  double? _precioTotal;
  bool? _realizado;
  String? _nota;
  int? _idLocal;
  int? _idCliente;

  get idPedido => this._idPedido;

  set idPedido(value) => this._idPedido = value;

  get fechaEntregaPrevista => this._fechaEntregaPrevista;

  set fechaEntregaPrevista(value) => this._fechaEntregaPrevista = value;

  get fechaEntrega => this._fechaEntrega;

  set fechaEntrega(value) => this._fechaEntrega = value;

  get fechaPedidoRealizado => this._fechaPedidoRealizado;

  set fechaPedidoRealizado(value) => this._fechaPedidoRealizado = value;

  get destino => this._destino;

  set destino(value) => this._destino = value;

  get precioTotal => this._precioTotal;

  set precioTotal(value) => this._precioTotal = value;

  get realizado => this._realizado;

  set realizado(value) => this._realizado = value;

  get nota => this._nota;

  set nota(value) => this._nota = value;

  get idLocal => this._idLocal;

  set idLocal(value) => this._idLocal = value;

  get idCliente => this._idCliente;

  set idCliente(value) => this._idCliente = value;

  Pedido(this._idPedido, this._fechaEntregaPrevista, this._fechaEntrega,
      this._fechaPedidoRealizado, this._destino);
}
