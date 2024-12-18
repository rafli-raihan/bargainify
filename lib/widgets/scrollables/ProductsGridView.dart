import 'package:bargainify/models/Product.dart';
import 'package:bargainify/screens/%5Bid%5D/ProductScreen.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  final List<Product> products; // Accept a list of strings

  const ProductsGrid({super.key, required this.products});

  int getResponsiveGridCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    
    switch (screenWidth) {
      case < 600:
        return 2; // Mobile Portrait
      case >= 600 && < 1024:
        return 3; // Medium (Mobile Landscape, Tablet, Foldables)
      case >= 1024 && < 1280:
        return 4; // Desktop Narrow
      case >= 1280 && < 1536:
        return 5; // Desktop Standard
      case >= 1536:
        return 6; // Desktop Ultrawide
      default:
        return 2; // Fallback
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: getResponsiveGridCount(context), // Specify the number of columns
        childAspectRatio: 1, // Set the aspect ratio of the child widgets
        mainAxisSpacing: 10, // Set the spacing between rows
        crossAxisSpacing: 10, // Set the spacing between columns
      ),
      itemCount: products.length,
      shrinkWrap: true, // Dynamic width sm height lah
      physics: NeverScrollableScrollPhysics(), // Jadi yg didalem "kotak bwt list product nya" gak bisa di scroll klo pake ini
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ProductScreen();
            }));
          },
          child:
          Card(
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*Expanded(
                  child: Image.asset(
                    product.imageAsset,
                  ),
                ),*/
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        product.price,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Stock: ${product.stock}',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}