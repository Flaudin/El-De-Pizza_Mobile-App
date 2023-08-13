import 'dart:convert';
import 'package:eldepizza/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductService extends ChangeNotifier {
  Future<List<Product>> fetch_product() async {
    var response =
        await http.get(Uri.parse('http://192.168.0.109:1337/api/products'));
    if (response.statusCode == 200) {
      final products = json.decode(response.body);
      return products.map((prodata) => Product.fromJSON(prodata)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
