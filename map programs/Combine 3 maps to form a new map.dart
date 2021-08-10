void main() {
  final firstMap = {
    'car1': 'Tesla',
  };
  final secondMap = {
    'car2': 'Mercedes-Benz',
  };

  final thirdMap = {'car3': 'Porsche'};

  final forthMap = {...firstMap, ...secondMap, ...thirdMap};
  print(forthMap);
}
