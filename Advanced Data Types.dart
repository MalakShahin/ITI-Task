void main() {
  Map<String, int> students = {
    'Ali': 85,
    'Sara': 92,
    'John': 78,
    'Mona': 95,
  };

  print('Student names:');
  students.keys.forEach(print);

  int highestGrade = students.values.reduce((a, b) => a > b ? a : b);
  print('Highest grade: $highestGrade');

  students.remove('John');
  print('After removing John: $students');
}