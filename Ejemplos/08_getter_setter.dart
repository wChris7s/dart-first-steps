void main() {
  final mySquare = Square(side: 10);
  print('Área: ${mySquare.area}');
}

class Square {
  double _side;
  
  Square({ required double side })
    : _side = side;
  
  double get area {
    return _side * _side;
  }
  
  void set side(double value) {
    if (value < 0) throw 'Value must be >= 0';
    _side = value;
  }
}