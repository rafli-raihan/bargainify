import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bargainify/widgets/pop-ups/ProductPurchaseSheet.dart'; 
import 'package:bargainify/widgets/pop-ups/ProductPurchasePopUp.dart'; 


class ProductScreen extends StatelessWidget {
  final Product product;
  final double maxSize = 400;
  
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            /* Main Screen */
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          CarouselSlider.builder(
                            itemCount: product.imageUrls.length,
                            itemBuilder: (context, index, realIndex) {
                              final url = product.imageUrls[index];
                              return Builder(
                                builder: (context) {
                                  return Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                          maxWidth: 400,
                                          maxHeight: 400,
                                        ),
                                        child: Image.network(
                                          url,
                                          cacheHeight: 400,
                                          cacheWidth: 400,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            options: CarouselOptions(
                              height: maxSize,
                              aspectRatio: 1,
                              enableInfiniteScroll: true,
                              viewportFraction: 1,
                            ),
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width > maxSize
                                  ? maxSize
                                  : MediaQuery.of(context).size.width,
                            ),
                            padding:
                                const EdgeInsets.symmetric(vertical: 8.0),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
            /* Action Buttons */
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
        ),
      ),
    );
  }

  void _showProductPurchaseSheet(BuildContext context, Product product) {
    if (MediaQuery.of(context).size.width <= maxSize) {
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
