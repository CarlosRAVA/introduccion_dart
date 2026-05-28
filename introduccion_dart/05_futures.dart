void main() {
  print('Inicio');

  httpGet('url').then((value) {}).catchError((err) {
    print('Error: $err');
  });

  print('Fin');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 2), () {
    throw 'Error en la petición';
  });
}