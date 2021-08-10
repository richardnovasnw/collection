void main() {
  Map A = new Map();
  A['First'] = 1;
  A["Second"] = 2;
  A["Third"] = 3;
  A['Four'] = 4;
  A.removeWhere((k, v) => v.isOdd);

  print(A);
}
