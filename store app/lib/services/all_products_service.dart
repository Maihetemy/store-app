import 'dart:convert';

import 'package:project/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
 Future< List<ProductModel>> getProductsData() async{
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products'),);
    List<dynamic> data =jsonDecode(response.body) ;
    List<ProductModel> productsList = [];
    for(int i=0; i<data.length; i++){
      productsList.add(ProductModel.fromJson(data[i]),);
    }
    return productsList;
  }
}
