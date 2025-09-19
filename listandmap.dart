void main() {
  List<int> list = [10, 20, 30, 40];

  for (var element in list) {
    print(element);
  }

  List<int> mergedList = [...list, 50, 60];
  print(mergedList);
  var student = {'name': 'Ali', 'age': 22, 'grade': 'A'};
  student.forEach((key, value) => print(value));
  student['city'] = 'Cairo';
  student['grade'] = 'B';

  print(student);
}