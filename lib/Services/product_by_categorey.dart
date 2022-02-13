import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/Models/product_model.dart';
import 'package:store_app/helpers/api_helper.dart';

class GetCategory {
  Future<List<dynamic>> getProductsByCatName(
      {required String categoreyName}) async {
    List<dynamic> data = await Api().getRequest(
        url: 'https://fakestoreapi.com/products/category/$categoreyName',
        catName: categoreyName);
    List<ProductModel> products = [];

    for (var data in data) {
      products.add(ProductModel.fromJson(data));
    }
    return products;
  }
}
