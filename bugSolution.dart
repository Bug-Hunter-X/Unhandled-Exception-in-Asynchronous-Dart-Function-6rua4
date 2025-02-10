```dart
Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      // Consider returning a more informative error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Option 1: Rethrow the exception (for higher-level handling)
    // rethrow;
    // Option 2: Return null or an error object
    return null; 
    // Option 3:  Handle error gracefully and return an error object
    // return {"error": "Failed to fetch data"}; 
  }
}
```