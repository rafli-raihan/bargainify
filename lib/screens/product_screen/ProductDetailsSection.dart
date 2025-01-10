import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';

class ProductDetailsSection extends StatelessWidget {
  final Product product;
  final double maxSize;

  const ProductDetailsSection({
    Key? key,
    required this.product,
    required this.maxSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width > maxSize
            ? maxSize
            : MediaQuery.of(context).size.width,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.name,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            product.price,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            product.description,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}