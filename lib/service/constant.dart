import 'package:flutter/material.dart';

class WebService extends ChangeNotifier {
  final String baseUrl = 'http://localhost:1337/api';
  final String categoryEndpoint = 'http://localhost:1337/api/category';
  final String productEndpoint = 'http://localhost:1337/api/products';
}
