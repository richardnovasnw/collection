void main() {
  Map n = new Map();
  n['car1'] = 'Tesla';
  n["car2"] = 'Mercedes-Benz';
  n["car3"] = 'Porsche';
  for (var key in ['car1', 'car2', 'car3', 'car4', 'car5']) {
    n.putIfAbsent(key, () => 'Mazda');
  }

  print(n);
}
