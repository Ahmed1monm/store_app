import 'package:store_app/Models/product_model.dart';
import 'package:store_app/helpers/api_helper.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
      {required String url,
      required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().postRequest(url: url, body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    return ProductModel.fromJson(data);
  }
}
