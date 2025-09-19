
Future<String> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 3));
  return 'Data Loaded';
}

void main() async {
  String result = await fetchData();
  print(result);
}