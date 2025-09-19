class EvenNumbersIterable extends Iterable<int> {
  @override
  Iterator<int> get iterator => EvenNumbersIterator();
}

class EvenNumbersIterator extends Iterator<int> {
  int _current = 0;

  @override
  int get current => _current;

  @override
  bool moveNext() {
    if (_current >= 20) return false;
    _current += 2;
    return true;
  }
}

void main() {
  var evens = EvenNumbersIterable();
  for (var num in evens) {
    print(num);
  }
}