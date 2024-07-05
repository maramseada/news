
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
class Api {
  Future<dynamic> get({required String url, String? token, FormData? formData}) async {
    Map<String, String> headers = {};
    final dio = Dio();
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    final response = await dio.get(url, data: formData);

    if (response.statusCode == 200) {
      return response.data; // response.data is already a Map<String, dynamic>
    } else {
      throw Exception('Error: data not valid ${response.statusCode}');
    }
  }
}
