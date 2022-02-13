import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helpers/api_helper.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCat() async {
    List<dynamic> data = await Api()
        .getRequest(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
