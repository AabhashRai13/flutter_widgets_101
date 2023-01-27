import 'dart:developer';
import 'package:get/get.dart';
import 'package:widget_test/models/data.dart';
import 'package:widget_test/network/api_provider.dart';

class ApiController extends GetxController {
  List dataResponse = [].obs;
  RxBool loading = false.obs;
  final ApiProvider _apiProvider = ApiProvider();
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    loading.value = true;

    List<Album> products = await _apiProvider.fetchData();
    dataResponse.assignAll(products);
    log("${dataResponse.length}");

    loading.value = false;
  }
}
