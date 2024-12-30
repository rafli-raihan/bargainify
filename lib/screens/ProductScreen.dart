import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  final double maxWidth = 400;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: Stack(
        children: [ 
          /* Action Buttons */
          Positioned(
            bottom: 0,
            left: 0,
            right: 0, // Ensures the child is horizontally centered
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width > maxWidth
                      ? maxWidth
                      : MediaQuery.of(context).size.width,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: 
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.chat_bubble_rounded),
                      ),
                    ),
                    Expanded(
                      child: 
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const <Widget>[
                              IconButton(
                                onPressed: null,
                                icon: Icon(Icons.shopping_bag_rounded),
                              ),
                              Text("Beli"),
                            ],
                          ),
                        ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: 
                        IconButton(
                        onPressed: null,
                        icon: Icon(Icons.share_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          /* Main Screen */
          ListView(
            children: <Widget> [
              Column(
                children: <Widget>[
                  /* Tombol Kembali */
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                  /* Konten utama */
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: 
                      Column(
                        children: [
                          /* Foto - foto produk */
                          CarouselSlider.builder(
                            itemCount: product.imageUrls.length,
                            itemBuilder: (context, index, realIndex) {
                              final url = product.imageUrls[index];
                              return Builder(
                                builder: (context) {
                                  return Container(
                                    alignment: Alignment.center, // Center the carousel
                                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
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
                              height: maxWidth,
                              aspectRatio: 1,
                              enableInfiniteScroll: true,
                              viewportFraction: 1,
                            ),
                          ),
                          /* Detail Produk */
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
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
                              ],
                            ),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width > 768
                                  ? 768
                                  : MediaQuery.of(context).size.width,
                            ),
                            child: Text(
                              product.description,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
