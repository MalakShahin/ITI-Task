class User {
  String _username = '';

  String get username => _username;

  set username(String name) {
    if (name.isNotEmpty) {
      _username = name;
    } else {
      print('Username cannot be empty.');
    }
  }
}

void main() {
  var user = User();
  user.username = 'Alice';
  print('Username: ${user.username}');  // Username: Alice
  user.username = '';  // Invalid
}