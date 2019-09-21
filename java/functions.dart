main() {
  final values = [1, 2, 3, 4, 5, 10, 50];
  values.map(scream).forEach(print);
}

String scream(int length) => "A${'a' * length}";
