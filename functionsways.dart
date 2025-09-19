
int areaNormal(int width, int height) {
  return width * height;
}

int areaArrow(int width, int height) => width * height;

void main() {
  
  var areaAnonymous = (int width, int height) {
    return width * height;
  };

  int calculateArea(int w, int h, int Function(int, int) areaFunc) {
    return areaFunc(w, h);
  }

  print('Normal function: ${areaNormal(5, 10)}');
  print('Arrow function: ${areaArrow(5, 10)}');
  print('Anonymous function: ${areaAnonymous(5, 10)}');
  print('Higher-order function: ${calculateArea(5, 10, areaArrow)}');
}