import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bargainify/models/Product.dart';

class ProductPhotosSection extends StatelessWidget {
  final Product product;
  final double maxSize;

  const ProductPhotosSection({
    Key? key,
    required this.product,
    required this.maxSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              maxWidth: 500,
                              maxHeight: 500,
                            ),
                            child: Image.network(
                              url,
                              cacheHeight: 500,
                              cacheWidth: 500,
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
            ],
        ),
    );
  }
}