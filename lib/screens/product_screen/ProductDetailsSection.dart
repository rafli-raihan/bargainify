import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';

class ProductDetailsSection extends StatelessWidget {
  final Product product;
  final double maxSize;
  final String? submittedBargainPrice;

  const ProductDetailsSection({
    Key? key,
    required this.product,
    required this.maxSize,
    this.submittedBargainPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: maxSize,
        maxHeight: MediaQuery.of(context).size.width > 800 ? 400 : double.infinity,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
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
              if (submittedBargainPrice != null && submittedBargainPrice!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    submittedBargainPrice != product.price
                        ? 'Anda telah mengajukan harga tawaran anda:\nRp $submittedBargainPrice'
                        : 'Anda telah mengajukan pembelian tanpa harga tawar',
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
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
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Text(
                product.description,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}