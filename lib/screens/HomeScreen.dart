import 'package:bargainify/widgets/scrollables/ProductsGridView.dart';
import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';
import 'dart:math';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  double getResponsiveHeroHeight (BuildContext context){
    return ( MediaQuery.of(context).size.width < 1024 ) ? 250 : 400;
  }

  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    final int randomIndex = random.nextInt(productList.length); // Random index within the productList range
    final Product heroProduct = productList[randomIndex];

    return Scaffold(
      body: ListView(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),  
            padding: EdgeInsets.all(8),
            height: getResponsiveHeroHeight(context),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: 
                Image.asset(
                  heroProduct.imageAsset,
                  fit: BoxFit.cover,
                ),
                ),
                // Overlay with text
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.black.withOpacity(0.5),
                  ),                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Selamat Datang!',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Temukan barang yang anda inginkan dengan harga yang fantastis",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProductsGrid(products: productList),
          ),
        ],
      ),
    );
  }
}