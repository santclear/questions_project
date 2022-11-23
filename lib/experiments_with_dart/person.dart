class Person {
  String nome = '';
  String _cpf = '';

  set cpf(String newCpf) {
    this._cpf = newCpf;
  }

  String get cpf {
    return this._cpf;
  }
}
