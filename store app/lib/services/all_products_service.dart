import 'package:project/models/product_model.dart';
import 'package:project/services/api.dart';

class AllProductsService {
  Future<List<ProductModel>> getProductsData() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
