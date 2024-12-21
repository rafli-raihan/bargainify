import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              /* Product Photos */
              Container(
                padding: EdgeInsets.all(5.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width > 768 ? 768 : MediaQuery.of(context).size.width,
                    maxHeight: MediaQuery.of(context).size.height > 350 ? 350 : MediaQuery.of(context).size.height,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: product.imageUrls.map((url) {
                      return Center(
                        child: Image.network(
                          url,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /* Product Listing / Name */
                  Text(
                    product.name,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  /* Product Price */
                  Text(
                    product.price,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              /* Action List */
              Container(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width > 450 ? 450 : MediaQuery.of(context).size.width,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag_rounded),
                          ),
                          SizedBox(height: 2.0),
                          Text("Beli"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chat_bubble_rounded),
                          ),
                          SizedBox(height: 2.0),
                          Text("Chat Penjual"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share_rounded),
                          ),
                          SizedBox(height: 2.0),
                          Text("Share"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /* Product Description */
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width > 768 ? 768 : MediaQuery.of(context).size.width,
                ),
                child: Text(
                  product.description,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
