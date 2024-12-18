import 'package:bargainify/widgets/scrollables/ProductsGridView.dart';
import 'package:flutter/material.dart';
import 'package:bargainify/models/Product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        children: <Widget>[
          const Text(
            'Selamat Datang!',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Temukan barang yang anda inginkan dengan harga yang fantastis",
            style: TextStyle(
              fontSize: 14.0,
            ),
            textAlign: TextAlign.start,
          ),
          ProductsGrid(products: productList)
          // Add more widgets here if needed
        ],
      ),
    );
  }
}