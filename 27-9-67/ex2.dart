abstract class Shape {
  int dim1;
  int dim2;

  Shape(this.dim1,this.dim2);
  //abstract methood
  void area();
}
class Rectangle extends Shape{
  Rectangle(super.dim1, super.dim2);
  void area(){
    int sum = dim1 * dim2;
    print('The area of the Rectangle is $sum');
   
  }
}
class Triangle extends Shape{
  Triangle(super.dim1,super.dim2);
  void area(){
    double sum = 1/2 * dim1 * dim2;
    print('The area of the Triangle is $sum');
    
  }
}
void main(List<String> args) {
  var Re = Rectangle(20, 10);
  var Tr = Triangle(20,10);
  Re.area();
  Tr.area();
}
