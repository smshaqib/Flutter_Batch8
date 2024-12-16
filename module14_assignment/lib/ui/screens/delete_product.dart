import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<void> deleteProduct(BuildContext context, String productId) async {
  final Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/DeleteProduct/$productId');

  try {
    final Response response = await delete(
      uri,
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      if (responseBody['data']['deletedCount'] > 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Product deleted successfully!')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No product was deleted. Product ID may be invalid.')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete product: ${response.body}')),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('An error occurred: $e')),
    );
  }
}
