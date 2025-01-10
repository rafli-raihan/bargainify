import 'package:bargainify/widgets/scrollables/ProductsGridView.dart';
import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';
import 'package:carousel_slider/carousel_slider.dart';  // Import the carousel_slider package

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  double getResponsiveHeroHeight(BuildContext context) {
    return (MediaQuery.of(context).size.width < 1024) ? 250 : 400;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            padding: EdgeInsets.all(10),
            height: getResponsiveHeroHeight(context),
            child: Stack(
              fit: StackFit.expand,
              children: [
                CarouselSlider.builder(
                  itemCount: productList.length, 
                  itemBuilder: (context, index, realIndex) {
                    final Product product = productList[index];
                    return ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              product.imageAsset,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      );
                    },
                    options: CarouselOptions(
                    height: getResponsiveHeroHeight(context),
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                ),
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
