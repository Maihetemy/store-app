import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getCategoryData() async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/:category_name'));
    List<dynamic> categorysList = jsonDecode(response.body);
    return categorysList;
  }
}
