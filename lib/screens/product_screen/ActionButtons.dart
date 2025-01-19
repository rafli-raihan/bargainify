import 'package:bargainify/models/Product.dart';
import 'package:bargainify/widgets/pop-ups/ProductPurchasePopUp.dart';
import 'package:bargainify/widgets/pop-ups/ProductPurchaseSheet.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final BuildContext context;
  final Product product;
  final double maxSize;

  const ActionButtons({
    required this.context,
    required this.product,
    required this.maxSize,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: IconButton(
                onPressed: null,
                icon: Icon(Icons.chat_bubble_rounded),
              ),
            ),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () => _showProductPurchaseSheet(context, product), 
                icon:Icon(Icons.shopping_bag_rounded),
                label: const Text("Beli"),
              )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: IconButton(
                onPressed: null,
                icon: Icon(Icons.share_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showProductPurchaseSheet(BuildContext context, Product product) {
    if (MediaQuery.of(context).size.width <= 500) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return ProductPurchaseSheet(
            productName: product.name,
            price: product.price,
            bargainify: product.bargainify,
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => ProductPurchasePopUp(
          productName: product.name,
          price: product.price,
          bargainify: product.bargainify,
        ),
      );
    }
  }
}