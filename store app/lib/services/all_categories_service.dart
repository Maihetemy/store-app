import 'package:project/services/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getCategoryData() async {
    List<dynamic> categorysList = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/:category_name');
    return categorysList;
  }
}
