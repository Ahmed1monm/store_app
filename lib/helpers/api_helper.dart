import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<dynamic>> getRequest(
      {required String url, String? catName}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is an error in status code ${response.statusCode}');
    }
  }

  postRequest({
    required String url,
    @required Map<String, dynamic>? body,
  }) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
    );
    Map<String, dynamic> data = await jsonDecode(response.body);
    return data;
  }

  putRequest({
    required String url,
    @required Map<String, dynamic>? body,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
    );
    Map<String, dynamic> data = await jsonDecode(response.body);
    return data;
  }
}
