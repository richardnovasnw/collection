void main() {
  Map<String, String> car = new Map<String, String>();
  car['car1'] = 'tesla';
  car["car2"] = 'BMW';
  car["car3"] = 'Porsche';
  car["car4"] = 'Mitsubishi';
  car["car5"] = 'Kia';

  Map<String, String> carB = new Map<String, String>();
  for (var i in car.keys) {
    if (car[i]!.length > 5) {
      carB[i] = car[i].toString();
    }
  }

  print(carB);
}
