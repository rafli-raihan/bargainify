import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';
import 'package:bargainify/widgets/pop-ups/ProductPurchaseSheet.dart'; 
import 'package:bargainify/widgets/pop-ups/ProductPurchasePopUp.dart'; 
import 'ProductPhotosSection.dart'; 
import 'ProductDetailsSection.dart';  

class ProductScreen extends StatelessWidget {
  final Product product;
  final double maxSize = 400;
  
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
      ),
      body: SafeArea(
        bottom: true,
        child: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 900),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth < 700) {
                      return SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                              ProductPhotosSection(product: product, maxSize: maxSize),
                              Container(
                                constraints: BoxConstraints(maxWidth: 500),
                                child: Padding(                                  
                                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                                child: ProductDetailsSection(product: product, maxSize: maxSize),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return GridView.count(
                          crossAxisCount: 2,
                          children: <Widget>[
                            Container(
                              constraints: BoxConstraints(maxHeight: 500),
                              child: ProductPhotosSection(product: product, maxSize: maxSize),
                              ),
                            Container(
                              constraints: BoxConstraints(maxHeight: 500, maxWidth: 500),
                              child: Column(
                              children: [
                                ProductDetailsSection(product: product, maxSize: maxSize),
                                _ActionButtons(
                                  context: context,
                                  product: product,
                                  maxSize: maxSize,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
        ),
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width <= 700
        ? Container(
          height: 50,
          child: _ActionButtons(
            context: context,
            product: product,
            maxSize: maxSize,
          ),
        )
        : null,
    );
  }
}

class _ActionButtons extends StatelessWidget {
  final BuildContext context;
  final Product product;
  final double maxSize;

  const _ActionButtons({
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
        ? Colors.white.withOpacity(1)
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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => _showProductPurchaseSheet(context, product),
                      icon: Icon(Icons.shopping_bag_rounded),
                    ),
                    const Text("Beli"),
                  ],
                ),
              ),
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