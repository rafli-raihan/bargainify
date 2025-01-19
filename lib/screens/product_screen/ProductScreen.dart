import 'package:bargainify/screens/product_screen/ActionButtons.dart';
import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';
import 'ProductPhotosSection.dart'; 
import 'ProductDetailsSection.dart';
import 'ActionButtons.dart';  

class ProductScreen extends StatefulWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final double maxSize = 400;
  String? submittedBargainPrice;

  void updateSubmittedPrice(String price) {
    setState(() {
      submittedBargainPrice = price;
    });
  }

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
                    if (constraints.maxWidth < 800) {
                      return SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                              ProductPhotosSection(product: widget.product, maxSize: maxSize),
                              Container(
                                constraints: BoxConstraints(maxWidth: 500),
                                child: Padding(                                  
                                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                                child: ProductDetailsSection(product: widget.product, maxSize: maxSize, submittedBargainPrice: submittedBargainPrice,),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return GridView.count(
                        crossAxisCount: 2,
                        children: <Widget>[
                          ProductPhotosSection(product: widget.product, maxSize: maxSize),
                          Container(
                            constraints: BoxConstraints(maxHeight: 1600, maxWidth: 500),
                            child: Column(
                            children: [
                              ProductDetailsSection(product: widget.product, maxSize: maxSize, submittedBargainPrice: submittedBargainPrice,),
                              ActionButtons(
                                context: context,
                                product: widget.product,
                                maxSize: maxSize,
                                onBargainSubmitted: updateSubmittedPrice,
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
          child: ActionButtons(
            context: context,
            product: widget.product,
            maxSize: maxSize,
            onBargainSubmitted: updateSubmittedPrice,
          ),
        )
        : null,
    );
  }
}
