import 'package:project/models/product_model.dart';
import 'package:project/services/api.dart';

class CategoryService {
  Future<List<ProductModel>> getCategoryProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> categoryProductsList = [];
    for (int i = 0; i < data.length; i++) {
      categoryProductsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return categoryProductsList;
  }
}
