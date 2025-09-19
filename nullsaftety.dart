void main() {
  String? username;

  print(username ?? 'Guest');

  username ??= 'Guest';
  print(username);

  print(username != null ? 'Welcome, $username' : 'Guest');

  username = 'Ali';
  print(username != null ? 'Welcome, $username' : 'Guest');
}