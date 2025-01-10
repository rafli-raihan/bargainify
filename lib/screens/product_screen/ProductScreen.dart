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
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return Stack(
                children: [
                  ListView(
                    children: <Widget>[
                      ProductPhotosSection(product: product, maxSize: maxSize),
                      Container( 
                        constraints: BoxConstraints(maxWidth: 400),
                        child: Padding(
                        padding: EdgeInsets.symmetric( vertical: 0, horizontal: 30),
                        child: ProductDetailsSection(product: product, maxSize: maxSize),
                        ),
                      ),
                      
                      const SizedBox(height: 100),
                        Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(1),
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
                            ),
                          ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(1),
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
                                      onPressed: () => _showProductPurchaseSheet(
                                          context, product),
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
                    ),
                  ),
                ],
              );       
            } else {
              // Use GridView for wider screens
              return GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  ProductPhotosSection(product: product, maxSize: maxSize),
                  Column(
                    children: [
                      ProductDetailsSection(product: product, maxSize: maxSize),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(3),
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
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          },
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