```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if keys exist before accessing them
      final String? name = jsonData['name'];
      final int? age = jsonData['age'];

      if (name != null && age != null) {
        print('Name: $name, Age: $age');
      } else {
        print('Error: Missing keys in JSON response.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Consider more robust error handling like retry mechanism, logging, etc
  }
}
```