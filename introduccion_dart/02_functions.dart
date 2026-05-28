void main() {

  print ( greetPerson('Carlos', message: 'Hola'));

  print( greetPerson2(name: '', message: '') );

}

String greetPerson(String name, {String message = 'Hola'}) {
  return "$message -> $name";
}

String greetPerson2({ required String name, required String message = '' }) {
  return "$message -> $name";
}

int addTwoNumbers(int a, int b) => a + b;