import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:store_app/Models/product_model.dart';

class ProductDetails extends StatelessWidget {
  int _quantity = 1;
  ProductModel? product = ProductModel(
      rate: RatingModel(rate: 0, count: 0),
      id: 0,
      title: '',
      price: 0,
      description: '',
      category: '',
      image: '');
  static const String routName = 'orderDetails';
  ProductDetails({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          product!.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            Image.network(
              product!.image,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.7,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product!.title),
                      Text(product!.price.toString()),
                      Text(
                        product!.description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Material(
                            color: Colors.redAccent,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            )),
                      ),
                      Text(
                        '$_quantity',
                        style: TextStyle(fontSize: 30),
                      ),
                      ClipOval(
                        child: Material(
                            color: Colors.redAccent,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  minWidth: double.infinity,
                ))
          ],
        ),
      ),
    );
  }
}
