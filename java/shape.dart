import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') {
      return Circle(2);
    }
    if (type == 'square') {
      return Square(2);
    }
    throw 'Can\'t create $type.';
  }

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

class CircleMock implements Circle {
  num area;
  num radius;
}

void main() {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}
