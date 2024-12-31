class Product {
  String name;
  String location;
  String description;
  String price;
  String imageAsset;
  List<String> imageUrls;
  int stock;
  bool bargainify;

  Product({
    required this.name,
    required this.location,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.imageUrls,
    required this.stock,
    required this.bargainify,
  });
}

var productList = [
  Product(
    name: 'NVIDIA GeForce RTX 3080 Founders Edition',
    location: 'Jakarta, Indonesia',
    description:
        'NVIDIA GeForce RTX 3080 Founders Edition adalah kartu grafis berkinerja tinggi yang dirancang untuk kebutuhan gaming dan pekerjaan profesional. Dengan arsitektur Ampere yang revolusioner, kartu ini memberikan pengalaman visual luar biasa dengan dukungan untuk ray tracing real-time. Cocok untuk gamer hardcore yang ingin memainkan game terbaru pada pengaturan grafis tertinggi, serta para profesional yang membutuhkan performa grafis yang stabil untuk pekerjaan seperti rendering video dan desain 3D.',
    price: 'Rp 10.000.000',
    imageAsset: 'images/rtx3080.jpg',
    imageUrls: [
      'https://i.pcmag.com/imagery/reviews/00WMjntQXPdEuyl1cpsBHMn-8.fit_scale.size_1028x578.v1622581812.jpg',
      'https://i.ebayimg.com/images/g/def/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/ghi/s-l1600.jpg',
    ],
    stock: 5,
    bargainify: true,
  ),
  Product(
    name: 'ASUS ROG Zephyrus G14 Gaming Laptop',
    location: 'Bandung, Indonesia',
    description:
        'ASUS ROG Zephyrus G14 adalah laptop gaming yang ringkas dan kuat dengan prosesor AMD Ryzen 9 dan kartu grafis NVIDIA RTX 3060. Laptop ini menawarkan kinerja yang luar biasa dalam desain yang portabel, membuatnya ideal untuk gamer yang sering bepergian atau profesional yang membutuhkan perangkat yang andal untuk tugas-tugas berat. Dilengkapi dengan sistem pendingin canggih dan layar berkualitas tinggi, laptop ini menghadirkan pengalaman gaming dan kerja yang memuaskan.',
    price: 'Rp 15.000.000',
    imageAsset: 'images/zephyrus_g14.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/jkl/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/mno/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/pqr/s-l1600.jpg',
    ],
    stock: 3,
    bargainify: false,
  ),
  Product(
    name: 'Samsung Galaxy S21 Ultra 5G',
    location: 'Surabaya, Indonesia',
    description:
        'Samsung Galaxy S21 Ultra 5G adalah smartphone flagship dengan kamera utama 108MP dan konektivitas 5G. Didesain untuk pengguna yang menginginkan performa terbaik, ponsel ini menawarkan layar Dynamic AMOLED 2X yang tajam, daya tahan baterai luar biasa, dan fitur-fitur canggih seperti S Pen support dan perekaman video 8K. Sangat cocok untuk pecinta fotografi dan pengguna yang membutuhkan ponsel dengan kinerja terbaik untuk pekerjaan dan hiburan.',
    price: 'Rp 12.000.000',
    imageAsset: 'images/galaxy_s21_ultra.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/stu/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/vwx/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/yz0/s-l1600.jpg',
    ],
    stock: 7,
    bargainify: true,
  ),
  Product(
    name: 'AMD Radeon RX 6800 XT',
    location: 'Medan, Indonesia',
    description:
        'AMD Radeon RX 6800 XT adalah kartu grafis kelas atas yang menawarkan performa luar biasa untuk para gamer dan profesional. Dengan arsitektur RDNA 2, kartu ini mampu menghadirkan grafis realistis dan gameplay yang halus. Sangat cocok untuk mereka yang ingin memainkan game terbaru pada resolusi tinggi atau melakukan rendering 3D dengan efisiensi yang luar biasa.',
    price: 'Rp 9.500.000',
    imageAsset: 'images/rx6800xt.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/123/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/456/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/789/s-l1600.jpg',
    ],
    stock: 4,
    bargainify: true,
  ),
  Product(
    name: 'Dell XPS 13 (2021)',
    location: 'Yogyakarta, Indonesia',
    description:
        'Dell XPS 13 (2021) adalah ultrabook ramping dengan prosesor Intel Core generasi ke-11 dan layar yang menakjubkan. Dirancang untuk produktivitas, perangkat ini menawarkan daya tahan baterai yang lama, build quality premium, dan performa luar biasa untuk pekerjaan kantor, presentasi, dan hiburan. Cocok untuk pengguna yang membutuhkan laptop serbaguna dengan desain yang elegan dan portabilitas tinggi.',
    price: 'Rp 14.000.000',
    imageAsset: 'images/dell_xps_13.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/abc/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/def/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/ghi/s-l1600.jpg',
    ],
    stock: 2,
    bargainify: false,
  ),
  Product(
    name: 'Apple iPhone 12 Pro',
    location: 'Bali, Indonesia',
    description:
        'Apple iPhone 12 Pro adalah smartphone premium yang dilengkapi dengan chip A14 Bionic dan sistem kamera Pro. Menawarkan pengalaman fotografi dan videografi profesional, perangkat ini sangat cocok untuk pengguna yang menghargai kualitas tinggi dalam desain dan performa. Dengan layar Super Retina XDR dan kemampuan MagSafe, iPhone 12 Pro adalah pilihan sempurna untuk kebutuhan sehari-hari maupun pekerjaan kreatif.',
    price: 'Rp 11.000.000',
    imageAsset: 'images/iphone_12_pro.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/jkl/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/mno/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/pqr/s-l1600.jpg',
    ],
    stock: 6,
    bargainify: true,
  ),
  Product(
    name: 'MSI GE76 Raider Gaming Laptop',
    location: 'Semarang, Indonesia',
    description:
        'MSI GE76 Raider adalah laptop gaming berkinerja tinggi dengan prosesor Intel Core i7 dan kartu grafis NVIDIA RTX 3070. Laptop ini dirancang untuk para gamer yang menginginkan pengalaman gaming terbaik serta profesional yang membutuhkan perangkat kuat untuk pekerjaan berat seperti video editing dan rendering. Dengan layar besar dan sistem pendingin canggih, laptop ini memberikan performa yang memuaskan di setiap situasi.',
    price: 'Rp 18.000.000',
    imageAsset: 'images/msi_ge76_raider.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/stu/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/vwx/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/yz0/s-l1600.jpg',
    ],
    stock: 3,
    bargainify: false,
  ),
  Product(
    name: 'Google Pixel 6 Pro',
    location: 'Makassar, Indonesia',
    description:
        'Google Pixel 6 Pro adalah smartphone terbaru dari Google dengan fitur AI canggih dan kualitas kamera yang luar biasa. Dilengkapi dengan prosesor Google Tensor, perangkat ini menawarkan performa yang cepat dan efisien. Kamera utama yang tajam dan fitur seperti Magic Eraser membuat Pixel 6 Pro sangat ideal untuk fotografi. Ponsel ini cocok untuk mereka yang mencari teknologi terkini dengan desain modern.',
    price: 'Rp 13.000.000',
    imageAsset: 'images/pixel_6_pro.jpg',
    imageUrls: [
      'https://i.ebayimg.com/images/g/123/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/456/s-l1600.jpg',
      'https://i.ebayimg.com/images/g/789/s-l1600.jpg',
    ],
    stock: 5,
    bargainify: true,
  ),
];
