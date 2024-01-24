import 'dart:convert';

import 'package:project/models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  Future<List<ProductModel>> getCategoryProducts(
      {required String categoryName}) async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'),
    );
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> categoryProductsList = [];
    for (int i = 0; i < data.length; i++) {
      categoryProductsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return categoryProductsList;
  }
}
