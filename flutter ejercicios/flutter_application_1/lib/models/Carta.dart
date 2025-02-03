class Carta {
  String _numero;
  double _valor;
  String _palo;

  Carta(this._numero, this._valor, this._palo);

  // ignore: unnecessary_getters_setters
  String get numero => _numero;
  set numero(String numero) => _numero = numero;

  // ignore: unnecessary_getters_setters
  double get valor => _valor;
  set valor(double valor) => _valor = valor;

  // ignore: unnecessary_getters_setters
  String get palo => _palo;
  set palo(String palo) => _palo = palo;

  @override
  String toString() {
    return 'Carta(numero: \$numero, valor: \$valor, palo: \$palo)';
  }
}
