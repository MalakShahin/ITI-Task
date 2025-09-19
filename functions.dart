
void addNumbers(int a, int b) {
  print('Sum: ${a + b}');
}

int square(int x) => x * x;

void greet({String? name, String? city}) {
  if (name == null) {
    print('Hello Guest');
  } else if (city == null) {
    print('Hello $name');
  } else {
    print('Hello $name from $city');
  }
}

void main() {
  addNumbers(3, 4);

  print(square(5));

  greet();
  greet(name: 'Ali');
  greet(name: 'Ali', city: 'Cairo');
}