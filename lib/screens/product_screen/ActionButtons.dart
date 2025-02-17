import 'package:bargainify/models/Product.dart';
import 'package:bargainify/screens/product_screen/pop-ups/ProductPurchasePopUp.dart';
import 'package:bargainify/screens/product_screen/pop-ups/ProductPurchaseSheet.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final Product product;
  final double maxSize;
  final Function(String) onBargainSubmitted;

  const ActionButtons({
    required this.product,
    required this.maxSize,
    required this.onBargainSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: MediaQuery.of(context).size.width < 700
        ? Theme.of(context).colorScheme.surface.withOpacity(0.9)
        : Colors.transparent,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width > maxSize
              ? maxSize
              : MediaQuery.of(context).size.width,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight, 
              child: ElevatedButton.icon(
                onPressed: () => _showProductPurchaseSheet(context, product), 
                icon:Icon(Icons.shopping_bag_rounded),
                label: const Text("Beli"),
              )
            ),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.chat_bubble_rounded),
            ),
          ],
        ),
      ),
    );
  }

  void _showProductPurchaseSheet(BuildContext context, Product product) {
    if (MediaQuery.of(context).size.width >= 500 && MediaQuery.of(context).size.height >= 500) {
      showDialog(
        context: context,
        builder: (context) => ProductPurchasePopUp(
          productName: product.name,
          price: product.price,
          bargainify: product.bargainify,
          onBargainSubmitted: onBargainSubmitted,
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return ProductPurchaseSheet(
            productName: product.name,
            price: product.price,
            bargainify: product.bargainify,
            onBargainSubmitted: onBargainSubmitted,
          );
        },
      );
    }
  }
}