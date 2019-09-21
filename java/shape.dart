import 'dart:math';

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num slide;

  Square(this.slide);

  @override
  num get area => pow(slide, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') {
    return Circle(2);
  }
  if (type == 'square') {
    return Square(2);
  }
  throw 'Can\'t create $type.';
}

void main() {
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print(circle.area);
  print(square.area);
}
