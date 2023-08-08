import 'dart:convert';

import 'package:eldepizza/service/constant.dart';
import 'package:http/http.dart' as http;

class ProductService extends WebService {
  Future fetch_product() async {
    var response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final products = json.decode(response.body);
      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
