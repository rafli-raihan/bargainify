import 'package:bargainify/screens/%5Bid%5D/ProductScreen.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  final List<String> products; // Accept a list of strings

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
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ProductScreen();
            }));
          },
          child:
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
                color: Colors.white54,
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(14.0),
              child: 
                Column(
                  children: <Widget> [
                    //Image.network(),
                    Text(
                      products[index], 
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                      softWrap: true, 
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    Text(
                      "Harga",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
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