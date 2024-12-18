import 'dart:ffi';

class Product {
  String name;
  String location;
  String description;
  String price;
  String imageAsset;
  List<String> imageUrls;
  int stock;

  Product({
    required this.name,
    required this.location,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.imageUrls,
    required this.stock,
  });
}

var productList = [
  Product(
    name: 'NVIDIA GeForce RTX 3080 Founders Edition',
    location: 'Jakarta, Indonesia',
    description: 'High-performance graphics card suitable for gaming and professional workloads.',
    price: 'Rp 10.000.000',
    imageAsset: 'images/rtx3080.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/abc/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/def/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/ghi/s-l1600.jpg',
    ],
    stock: 5,
  ),
  Product(
    name: 'ASUS ROG Zephyrus G14 Gaming Laptop',
    location: 'Bandung, Indonesia',
    description: 'Compact and powerful gaming laptop with AMD Ryzen 9 and NVIDIA RTX 3060.',
    price: 'Rp 15.000.000',
    imageAsset: 'images/zephyrus_g14.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/jkl/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/mno/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/pqr/s-l1600.jpg',
    ],
    stock: 3,
  ),
  Product(
    name: 'Samsung Galaxy S21 Ultra 5G',
    location: 'Surabaya, Indonesia',
    description: 'Flagship smartphone with 108MP camera and 5G connectivity.',
    price: 'Rp 12.000.000',
    imageAsset: 'images/galaxy_s21_ultra.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/stu/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/vwx/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/yz0/s-l1600.jpg',
    ],
    stock: 7,
  ),
  Product(
    name: 'AMD Radeon RX 6800 XT',
    location: 'Medan, Indonesia',
    description: 'High-end graphics card delivering exceptional performance for gaming enthusiasts.',
    price: 'Rp 9.500.000',
    imageAsset: 'images/rx6800xt.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/123/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/456/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/789/s-l1600.jpg',
    ],
    stock: 4,
  ),
  Product(
    name: 'Dell XPS 13 (2021)',
    location: 'Yogyakarta, Indonesia',
    description: 'Sleek ultrabook with 11th Gen Intel Core processor and stunning display.',
    price: 'Rp 14.000.000',
    imageAsset: 'images/dell_xps_13.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/abc/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/def/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/ghi/s-l1600.jpg',
    ],
    stock: 2,
  ),
  Product(
    name: 'Apple iPhone 12 Pro',
    location: 'Bali, Indonesia',
    description: 'Premium smartphone with A14 Bionic chip and Pro camera system.',
    price: 'Rp 11.000.000',
    imageAsset: 'images/iphone_12_pro.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/jkl/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/mno/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/pqr/s-l1600.jpg',
    ],
    stock: 6,
  ),
  Product(
    name: 'MSI GE76 Raider Gaming Laptop',
    location: 'Semarang, Indonesia',
    description: 'High-performance gaming laptop with Intel Core i7 and NVIDIA RTX 3070.',
    price: 'Rp 18.000.000',
    imageAsset: 'images/msi_ge76_raider.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/stu/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/vwx/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/yz0/s-l1600.jpg',
    ],
    stock: 3,
  ),
  Product(
    name: 'Google Pixel 6 Pro',
    location: 'Makassar, Indonesia',
    description: 'Latest Google smartphone with advanced AI features and exceptional camera quality.',
    price: 'Rp 13.000.000',
    imageAsset: 'images/pixel_6_pro.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/123/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/456/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/789/s-l1600.jpg',
    ],
    stock: 5,
  ),
];

