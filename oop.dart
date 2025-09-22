

// Task 1: 
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print('Brand: $brand, Year: $year');
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, int year, this.doors) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Doors: $doors');
  }
}

class Bike extends Vehicle {
  String type;

  Bike(String brand, int year, this.type) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Type: $type');
  }
}

// Task 2: 
class Animal {
  void speak() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print('Woof!');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('Meow!');
  }
}

// Task 3: 
abstract class Shape {
  double area(); 
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14159 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

// Task 4:
class Counter {
  static int count = 0;

  Counter() {
    count++;
  }

  static void getCount() {
    print('Total objects created: $count');
  }
}

// Task 5: 
class Calculator {
  int add(int a, int b, [int? c]) {
    if (c != null) {
      return a + b + c;
    }
    return a + b;
  }
}

// Task 6
mixin Logger {
  void log(String msg) {
    print('[LOG]: $msg');
  }
}

mixin Printer {
  void printData(String data) {
    print('[DATA]: $data');
  }
}

class Report with Logger, Printer {
  void generateReport() {
    log('Report generated successfully');
    printData('This is the report content');
  }
}

void main() {
  print('=== Task 1: Inheritance ===');
  Car car = Car('Toyota', 2020, 4);
  car.displayInfo();
  print('---');
  Bike bike = Bike('Honda', 2022, 'Mountain');
  bike.displayInfo();
  print('');

  print('=== Task 2: Method Override ===');
  List<Animal> animals = [Dog(), Cat(), Dog(), Cat()];
  for (var animal in animals) {
    animal.speak();
  }
  print('');

  print('=== Task 3: Abstraction ===');
  Shape circle = Circle(5.0);
  print('Circle area: ${circle.area()}');
  Shape rectangle = Rectangle(4.0, 6.0);
  print('Rectangle area: ${rectangle.area()}');
  print('');

  print('=== Task 4: Static ===');
  Counter c1 = Counter();
  Counter c2 = Counter();
  Counter c3 = Counter();
  Counter.getCount();
  print('');

  print('=== Task 5: Method Overloading (Simulated) ===');
  Calculator calc = Calculator();
  print('Sum of two numbers: ${calc.add(2, 3)}');
  print('Sum of three numbers: ${calc.add(2, 3, 4)}');
  print('');

  print('=== Task 6: Mixins ===');
  Report report = Report();
  report.generateReport();
  report.log('Additional log message');
  report.printData('Additional data');
  print('');
}