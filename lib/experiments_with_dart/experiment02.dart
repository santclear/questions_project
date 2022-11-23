import './person.dart';

main() {
  var p1 = Person();
  p1.nome = 'João';
  p1.cpf = '123.456.789.09';

  print('The ${p1.nome} have CPF ${p1.cpf}');
  // print('O ${p1.nome}');
}
