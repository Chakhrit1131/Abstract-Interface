import 'dart:math';

abstract class Shape{
  void calculateArea();
}
abstract class Drawable {
  void draw();
}
class Circle implements Shape,Drawable{
  double? radius;
  Circle(this.radius);
  @override
  void calculateArea() {
   double sum = pi * radius! * radius!;
   print('calculateArea: ${sum.toStringAsFixed(2)}');

  }
  @override
  void draw() {
    print("Drawing Circle with radius: $radius");
  }
}
class Rectangle implements Shape,Drawable{
  double? width;
  double? height;
  Rectangle(this.height,this.width);
  @override
  void calculateArea() {
    double sum = width! * height!;
    print('Retangle: $sum');
  }
  
  @override
  void draw() {
   print("Drawing Rectangle with width: $height and height: $width");
  }
}
void main(List<String> args) {
  var circle = Circle(5);
  var re =Rectangle(10,20);
  circle.draw();
  circle.calculateArea();

  re.draw();
  re.calculateArea();
 


}