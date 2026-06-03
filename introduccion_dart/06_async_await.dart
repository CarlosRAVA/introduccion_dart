void main() async {

  print('Inicio');

  try {
    final value = await httpGet('url');
    print(value);
  } catch (err) {
    print('Error: $err');
  }

  print('Fin');

}

Future<String> httGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));

  throw 'Error en la peticion';
}