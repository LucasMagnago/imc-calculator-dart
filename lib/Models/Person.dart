class Person {
  String _name;
  double _height;
  double _weight;

  Person(this._name, this._height, this._weight);

  String getName() => _name;
  double getHeight() => _height;
  double getWeight() => _weight;

  void setName(String name) => _name = name;
  void setHeight(double height) => _height = height;
  void setWeight(double weight) => _weight = weight;

  static double calcImc(double height, double weight) {
    if (height > 0) {
      return weight / (height * height);
    } else {
      return 0;
    }
  }
}
