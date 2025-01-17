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
        maxWidth: maxSize
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 12),
            child: Row(
              children: [
                Icon(
                  Icons.people,
                  size: 30,
                  semanticLabel: 'Seller',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.sellerName,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        product.location,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
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