import 'package:bargainify/widgets/scrollables/ProductsGridView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> productListing=[
      "Nvidia RTX 4090 - Founders Edition 24GB GDDR6X",
      "Redmi Note 7 4/64 - 2nd Mulus",                              // Nanti list ini ganti dari db kita fetch data
      "LENOVO THINKPAD T480 I5 RAM 8GB INTERNAL 256GB HARGA TERMURAH",
      "Apalah",
      "Products no. 5"
    ];  

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
          ProductsGrid(products: productListing)
          // Add more widgets here if needed
        ],
      ),
    );
  }
}