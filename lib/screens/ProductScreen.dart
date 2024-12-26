import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
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
                          height: 400,
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
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width > 450
                                ? 450
                                : MediaQuery.of(context).size.width,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.shopping_bag_rounded),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text("Beli"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.chat_bubble_rounded),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text("Chat Penjual"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.share_rounded),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text("Share"),
                                ],
                              ),
                            ],
                          ),
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
          ],
        ),
      ),
    );
  }
}
