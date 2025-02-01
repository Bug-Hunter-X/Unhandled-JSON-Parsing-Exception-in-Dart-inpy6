```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data from the JSON, potential error here if keys are missing
      final String name = jsonData['name']; //Error if 'name' key is missing
      final int age = jsonData['age'];      //Error if 'age' key is missing or is not an integer
      print('Name: $name, Age: $age');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Additional error handling, maybe retry logic
  }
}
```