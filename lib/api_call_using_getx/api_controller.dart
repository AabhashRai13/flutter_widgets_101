import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:widget_test/models/data.dart';

class ApiController extends GetxController{
  final count = 0.obs;
  var productAvailable = false.obs;
  List dataResponse = [].obs;
  RxBool loading = false.obs;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

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
  void fetchProducts() async {
    log("message");
    loading.value = true;

    List<Album> products = await fetchData();
    dataResponse.assignAll(products);
    log("${dataResponse.length}");

    loading.value = false;


  }
}