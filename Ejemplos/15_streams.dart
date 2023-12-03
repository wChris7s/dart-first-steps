void main() {
  // emitNumbers().forEach(print);
  emitNumbers().listen((value) {
    print("Stream value: $value");
  });
}

Stream<int> emitNumbers () {
  // Emite valores periodicos hasta que el Stream cierre.
  return Stream
    .periodic(const Duration(seconds: 1), (value) => value)
    .take(5)
    .map((value) => value * 2);
}