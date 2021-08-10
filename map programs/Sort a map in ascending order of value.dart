void main() {
  Map numbers = {'one': 1, 'two': 2, 'five': 5, 'four': 4, 'three': 3};

  var sort = Map.fromEntries(
      numbers.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));

  print(sort);
}
