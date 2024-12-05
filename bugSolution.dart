```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      // Safe access to list elements
      if (data.isNotEmpty) {
        final firstElement = data[0];
        // Safe access to map keys using a null-aware operator
        final String? value = firstElement['someField'];
        if(value != null) {
          print(value);
        } else {
          print('someField not found in the first element');
        }
      } else {
        print('The data list is empty');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```