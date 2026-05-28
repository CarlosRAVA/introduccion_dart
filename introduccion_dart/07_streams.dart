void main() {

  emitNumbers().listen( (value) {
    print('Stream value: $value');
  });

}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1),(value) {
    return Type: int;
  }).take(5); // Stream.periodic cada segundo emitira 1 valor
}