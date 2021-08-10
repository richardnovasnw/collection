void main() {
  Map<String, String> map1 = {
    'car1': 'Tesla',
    'car2': 'Mercedes-Benz',
    'car3': 'Porsche'
  };

  Map map2 = Map.from(map1);
  print(map2);

  Map map3 = Map.of(map1);
  print(map3);
}
