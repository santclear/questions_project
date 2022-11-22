main() {
  int a = 3;
  double b = 3.1;
  bool isRaining = true;
  bool isCold = false;
  var c = 'You are very cool';
  print(c is String);
  print(isRaining || isCold);

  var names = ['Ana', 'Bia', 'Carlos'];
  names.add('Daniel');
  names.add('Daniel');
  names.add('Daniel');
  print(names.length);
  print(names.elementAt(0));
  print(names[5]);

  //var numbersSet = {0, 1, 2, 3, 4, 4, 4, 4};
  Set<int> numbersSet = {0, 1, 2, 3, 4, 4, 4, 4};
  print(numbersSet.length);
  print(numbersSet is Set);

  Map<String, double> studentsGrade = {'Ana': 9.7, 'Bia': 9.2, 'Carlos': 7.8};

  for (var chave in studentsGrade.keys) {
    print('chave = $chave');
  }

  for (var value in studentsGrade.values) {
    print('value = $value');
  }

  for (var reg in studentsGrade.entries) {
    print('${reg.key} = ${reg.value}');
  }

  dynamic x = 'Test';
  x = 123;
  x = false;
  print(x);

  var aa = 3;
  aa = 4;

  final bb = 3;
  // b = 6;

  const cc = 5;
  // cc = 7;
}
