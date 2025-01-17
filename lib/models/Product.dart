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
        'NVIDIA GeForce RTX 3080 Founders Edition bekas dalam kondisi sangat baik. Sedikit digunakan untuk gaming dan pekerjaan profesional, menawarkan kinerja luar biasa dengan dukungan ray tracing real-time. Ideal untuk gamer hardcore dan profesional yang membutuhkan performa grafis stabil untuk rendering video dan desain 3D.',
    price: 'Rp 10.000.000',
    imageAsset: 'images/rtx3080.jpg',
    imageUrls: [
      'https://i.pcmag.com/imagery/reviews/00WMjntQXPdEuyl1cpsBHMn-8.fit_scale.size_1028x578.v1622581812.jpg',
      'https://i.ebayimg.com/images/g/def/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/ghi/s-l1600.jpg',
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
        'Laptop gaming ASUS ROG Zephyrus G14 bekas dengan prosesor AMD Ryzen 9 dan NVIDIA RTX 3060. Kompak dan kuat, sempurna untuk gaming saat bepergian atau tugas profesional berat. Sistem pendingin canggih dan layar berkualitas tinggi memastikan pengalaman gaming dan kerja yang memuaskan.',
    price: 'Rp 15.000.000',
    imageAsset: 'images/zephyrus_g14.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/jkl/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/mno/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/pqr/s-l1600.jpg',
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
        'Samsung Galaxy S21 Ultra 5G bekas dalam kondisi sangat baik. Menampilkan kamera utama 108MP dan konektivitas 5G. Dirancang untuk pengguna yang menginginkan performa terbaik dengan layar Dynamic AMOLED 2X yang tajam, daya tahan baterai luar biasa, dan fitur canggih seperti dukungan S Pen dan perekaman video 8K.',
    price: 'Rp 12.000.000',
    imageAsset: 'images/galaxy_s21_ultra.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/stu/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/vwx/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/yz0/s-l1600.jpg',
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
        'AMD Radeon RX 6800 XT bekas dalam kondisi baik. Kartu grafis kelas atas ini menawarkan performa luar biasa untuk gamer dan profesional. Dengan arsitektur RDNA 2, kartu ini mampu menghadirkan grafis realistis dan gameplay yang halus, cocok untuk gaming resolusi tinggi atau rendering 3D.',
    price: 'Rp 9.500.000',
    imageAsset: 'images/rx6800xt.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/123/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/456/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/789/s-l1600.jpg',
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
        'Dell XPS 13 (2021) bekas dengan prosesor Intel Core generasi ke-11 dan layar menakjubkan. Dirancang untuk produktivitas dengan daya tahan baterai lama, kualitas build premium, dan performa luar biasa untuk pekerjaan kantor, presentasi, dan hiburan. Ideal untuk pengguna yang membutuhkan laptop serbaguna dengan desain elegan dan portabilitas tinggi.',
    price: 'Rp 14.000.000',
    imageAsset: 'images/dell_xps_13.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/abc/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/def/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/ghi/s-l1600.jpg',
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
        'Apple iPhone 12 Pro bekas dengan chip A14 Bionic dan sistem kamera Pro. Menawarkan pengalaman fotografi dan videografi profesional. Dengan layar Super Retina XDR dan kemampuan MagSafe, iPhone 12 Pro adalah pilihan sempurna untuk kebutuhan sehari-hari maupun pekerjaan kreatif.',
    price: 'Rp 11.000.000',
    imageAsset: 'images/iphone_12_pro.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/jkl/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/mno/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/pqr/s-l1600.jpg',
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
        'Laptop gaming MSI GE76 Raider bekas dengan prosesor Intel Core i7 dan NVIDIA RTX 3070. Dirancang untuk gamer yang menginginkan pengalaman gaming terbaik dan profesional yang membutuhkan perangkat kuat untuk tugas berat seperti video editing dan rendering. Dengan layar besar dan sistem pendingin canggih, laptop ini memberikan performa yang memuaskan di setiap situasi.',
    price: 'Rp 18.000.000',
    imageAsset: 'images/msi_ge76_raider.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/stu/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/vwx/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/yz0/s-l1600.jpg',
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
        'Google Pixel 6 Pro bekas dengan fitur AI canggih dan kualitas kamera luar biasa. Dilengkapi dengan prosesor Google Tensor untuk performa cepat dan efisien. Kamera utama yang tajam dan fitur seperti Magic Eraser membuat Pixel 6 Pro ideal untuk fotografi. Cocok untuk mereka yang mencari teknologi terkini dengan desain modern.',
    price: 'Rp 13.000.000',
    imageAsset: 'images/pixel_6_pro.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/123/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/456/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/789/s-l1600.jpg',
    ],
    stock: 5,
    bargainify: true,
    sellerName: 'PhoneMart',
    categories: ['Smartphone', 'Elektronik', 'Bekas'],
  ),
];