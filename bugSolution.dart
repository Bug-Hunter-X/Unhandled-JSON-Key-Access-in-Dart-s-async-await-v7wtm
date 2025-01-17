```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      // Check if the key exists before accessing it
      final value = jsonResponse.containsKey('nonExistentKey') ? jsonResponse['nonExistentKey'] : null; 
      //Alternative using ?? operator
      //final value = jsonResponse['nonExistentKey'] ?? null; 
      if(value != null){
        print(value);
      }else{
        print("Key not found");
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```