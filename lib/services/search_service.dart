import 'dart:convert';
import 'package:bai_tap_lon/features/shop/screens/home/models/product.dart';
import 'package:http/http.dart' as http;

Future<List<Product>> fetchProductsFromAPI() async {
  final response =
      await http.get(Uri.parse('http://localhost:5201/api/cocktails'));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    return data.map((json) => Product.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}
