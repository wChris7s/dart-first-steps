void main () {
  emitNumbers()
    .listen((value) {
      print("Stream Value: $value");
    });
}

// Async que regresa un Stream.
Stream emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for(int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}