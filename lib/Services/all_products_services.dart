import 'package:store_app/Models/product_model.dart';
import 'package:store_app/helpers/api_helper.dart';

class AllProductsServices {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().getRequest(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }

    return productList;
  }
}
