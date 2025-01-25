class Product {
  String name;
  String location;
  String description;
  String price;
  String imageAsset;
  List<String> imageUrls;
  int stock;
  bool bargainify;
  String sellerName;
  List<String> categories;

  Product({
    required this.name,
    required this.location,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.imageUrls,
    required this.stock,
    required this.bargainify,
    required this.sellerName,
    required this.categories,
  });
}

var productList = [
  Product(
    name: 'NVIDIA GeForce RTX 3080 Founders Edition',
    location: 'Jakarta, Indonesia',
    description:
        'NVIDIA GeForce RTX 3080 Founders Edition bekas dalam kondisi sangat baik. Sedikit digunakan untuk gaming dan pekerjaan profesional, menawarkan kinerja luar biasa dengan dukungan ray tracing',
    price: 'Rp 10.000.000',
    imageAsset: 'images/rtx3080.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1591488320449-011701bb6704?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1587202372634-32705e3bf49c?w=512&h=512&fit=crop&crop=faces,center&q=80',
    ],
    stock: 5,
    bargainify: true,
    sellerName: 'TechStoreID',
    categories: ['Kartu Grafis', 'Gaming', 'Bekas'],
  ),
  Product(
    name: 'ASUS ROG Zephyrus G14 Gaming Laptop',
    location: 'Bandung, Indonesia',
    description:
        'Laptop gaming ASUS ROG Zephyrus G14 bekas dengan prosesor AMD Ryzen 9 dan NVIDIA RTX 3060. Kompak dan kuat, sempurna untuk gaming saat bepergian atau tugas profesional berat. Sistem pendingin',
    price: 'Rp 15.000.000',
    imageAsset: 'images/zephyrus_g14.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1593642634367-d91a135587b5?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1593642634315-48f5414c3ad9?w=512&h=512&fit=crop&crop=faces,center&q=80'
    ],
    stock: 3,
    bargainify: false,
    sellerName: 'GamerHub',
    categories: ['Laptop', 'Gaming', 'Bekas'],
  ),
  Product(
    name: 'Samsung Galaxy S21 Ultra 5G',
    location: 'Surabaya, Indonesia',
    description:
        'Samsung Galaxy S21 Ultra 5G bekas dalam kondisi sangat baik. Menampilkan kamera utama 108MP dan konektivitas 5G. Dirancang untuk pengguna yang menginginkan performa terbaik dengan layar Dynam',
    price: 'Rp 12.000.000',
    imageAsset: 'images/galaxy_s21_ultra.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1610945264803-c22b62d2a7b3?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=512&h=512&fit=crop&crop=faces,center&q=80'
    ],
    stock: 7,
    bargainify: true,
    sellerName: 'PhoneMart',
    categories: ['Smartphone', 'Elektronik', 'Bekas'],
  ),
  Product(
    name: 'AMD Radeon RX 6800 XT',
    location: 'Medan, Indonesia',
    description:
        'AMD Radeon RX 6800 XT bekas dalam kondisi baik. Kartu grafis kelas atas ini menawarkan performa luar biasa untuk gamer dan profesional. Dengan arsitektur RDNA 2, kartu ini mampu menghadirkan',
    price: 'Rp 9.500.000',
    imageAsset: 'images/rx6800xt.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1555680202-c86f0e12f086?w=512&h=512&fit=crop&crop=faces,center&q=80'
    ],
    stock: 4,
    bargainify: true,
    sellerName: 'GraphicGuru',
    categories: ['Kartu Grafis', 'Gaming', 'Bekas'],
  ),
  Product(
    name: 'Dell XPS 13 (2021)',
    location: 'Yogyakarta, Indonesia',
    description:
        'Dell XPS 13 (2021) bekas dengan prosesor Intel Core generasi ke-11 dan layar menakjubkan. Dirancang untuk produktivitas dengan daya tahan baterai lama, kualitas build premium, dan performa lu',
    price: 'Rp 14.000.000',
    imageAsset: 'images/dell_xps_13.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1593642634443-44adaa06623a?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1593642533144-3d62aa4783ec?w=512&h=512&fit=crop&crop=faces,center&q=80'
    ],
    stock: 2,
    bargainify: false,
    sellerName: 'LaptopLounge',
    categories: ['Laptop', 'Elektronik', 'Bekas'],
  ),
  Product(
    name: 'Apple iPhone 12 Pro',
    location: 'Bali, Indonesia',
    description:
        'Apple iPhone 12 Pro bekas dengan chip A14 Bionic dan sistem kamera Pro. Menawarkan pengalaman fotografi dan videografi profesional. Dengan layar Super Retina XDR dan kemampuan MagSafe, iPhone',
    price: 'Rp 11.000.000',
    imageAsset: 'images/iphone_12_pro.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1603921326210-6edd2d60ca68?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1607936854279-55e8a4c64888?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1606041008023-472dfb5e530f?w=512&h=512&fit=crop&crop=faces,center&q=80'
    ],
    stock: 6,
    bargainify: true,
    sellerName: 'AppleHub',
    categories: ['Smartphone', 'Elektronik', 'Bekas'],
  ),
  Product(
    name: 'MSI GE76 Raider Gaming Laptop',
    location: 'Semarang, Indonesia',
    description:
        'Laptop gaming MSI GE76 Raider bekas dengan prosesor Intel Core i7 dan NVIDIA RTX 3070. Dirancang untuk gamer yang menginginkan pengalaman gaming terbaik dan profesional yang membutuhkan peran',
    price: 'Rp 18.000.000',
    imageAsset: 'images/msi_ge76_raider.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?w=512&h=512&fit=crop&crop=faces,center&q=80',
      'https://images.unsplash.com/photo-1593642702909-dec73df255d7?w=512&h=512&fit=crop&crop=faces,center&q=80',
    ],
    stock: 3,
    bargainify: false,
    sellerName: 'GamerHub',
    categories: ['Laptop', 'Gaming', 'Bekas'],
  ),
  Product(
    name: 'Google Pixel 6 Pro',
    location: 'Makassar, Indonesia',
    description:
        'Google Pixel 6 Pro bekas dengan fitur AI canggih dan kualitas kamera luar biasa. Dilengkapi dengan prosesor Google Tensor untuk performa cepat dan efisien. Kamera utama yang tajam dan fitur s',
    price: 'Rp 13.000.000',
    imageAsset: 'images/pixel_6_pro.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1635870723802-e88d76ae324e?w=512&h=512&fit=crop&crop=faces,center&q=80',
    ],
    stock: 5,
    bargainify: true,
    sellerName: 'PhoneMart',
    categories: ['Smartphone', 'Elektronik', 'Bekas'],
  ),
];

/* 
  foto-foto produk (ImageUrls) mungkin tidak akurat, saya ganti menggunakan foto yang mendekati dari unsplash.com
*/