import 'package:widget_test/models/data.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class ApiProvider {
  Future<List<Album>> fetchData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/albums');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Album.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}