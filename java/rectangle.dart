import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;

  // optional named parameter
  Rectangle({this.width = 0, this.height = 0, this.origin = const Point(0, 0)});

  @override
  String toString() {
    return 'Rectangle{width: $width, height: $height, origin: $origin}';
  }
}

void main() {
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
}
