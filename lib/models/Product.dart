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
        'Jual VGA RTX 3080 FE mulus poll gan, pemakaian cuma 8 bulan buat main Valorant sama editing doang nih. Selalu di ruangan AC, dijamin masih fresh banget performanya 💯\n\nSpek mantep buat gaming AAA title, setting Ultra 4K masih gas pol 60fps++. Box lengkap, ada manual book sama kabel power original. Baru ganti thermal pad + paste 2 bulan lalu, jadi suhu stabil 65-75°C pas gaming. Masih ada garansi resmi 8 bulan lagi.\n\nHarga udah termasuk anti static bag buat pengiriman. Bisa COD Jakarta atau kirim2. Harga segitu udah murah banget loh dibanding beli baru, mending buruan sebelum kehabisan! Bisa nego tipis kalo serius mau beli. WA/telp aja ya gan buat tanya2 lebih lanjut 🙏',
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
        'Bismillah, jual laptop gaming ASUS ROG Zephyrus G14 kondisi like new bgt masih kinclong ✨ Spek dewa: Ryzen 9 + RTX 3060, RAM 16GB dual channel, SSD NVMe 1TB.\n\nPemakaian baru 8 bulan, masih fresh bgt performanya. Battery health 89%, layar 2K 144Hz gaada dead pixel sama sekali. Keyboard backlight semua normal, cooling masih mantep karena baru ganti pasta. Windows 11 Pro original aktif permanent.\n\nKelengkapan:\n- Unit laptop mulus\n- Charger original\n- Tas ROG original\n- Cooling pad gaming\n- Box + manual book lengkap\n\nAlasan jual karena jarang dipake, kebanyakan laptop 😅 Lokasi Bandung, bisa COD atau kirim2. Harga segitu udah murah bgt loh, laptop baru 25jt++. Minat? Chat aja gan, bisa nego dikit 🙏',
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
        'Dijual Samsung S21 Ultra 5G second mulus no minus! HP selalu pake case + tempered glass dari hari pertama beli, jadi body masih mulus banget kaya baru 👍\n\nSpek gaperlu diragukan:\n- RAM 12GB jamin multitasking lancar\n- Storage 256GB masih sisa 180GB\n- Kamera 108MP hasil jepretan surgeon banget\n- Baterai masih awet 1.5 hari normal use\n\nFullset lengkap:\n- HP + charger fast charging 25W\n- Kabel data original\n- Box + manual book\n- Kartu garansi\n- Bonus 2 case premium\n- Screen protector cadangan\n\nIMEI terdaftar resmi ya guys, bukan BM! Dijual karena mau ganti iPhone 14. Lokasi Surabaya, bisa COD atau kirim2. Chat aja kalo mau liat2 dulu, bisa video call buat cek kondisi 😊',
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
        'Ready stock VGA AMD RX 6800 XT second mulus! Baru 6 bulan dipake buat nge-game MOBA doang, jadi masih fresh bgt performanya 🔥\n\nKartu grafis ini setara RTX 3080 loh performance nya, bisa gas gaming 4K ultra setting atau rendering video smooth. Suhu stabil 70°C, fan masih mulus semua. Thermal paste baru diganti bulan lalu.\n\nFullset dengan:\n- Box original\n- Manual book\n- Kabel power\n- Anti static bag\n\nGaransi distributor masih 1.5 tahun. Lokasi Medan, bisa COD atau kirim2. Harga masih bisa nego tipis kalo serius. Monggo chat WA kalo mau tanya2 dulu 😊',
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
        'Jual Dell XPS 13 2021 second kondisi 98% like new! Build quality premium, ringkas, perfect buat kerja atau kuliah 💻\n\nSpesifikasi mantap:\n- Intel Core i7 Gen 11\n- RAM 16GB\n- SSD NVMe 512GB\n- Layar 4K touch screen\n- Battery health masih 95%\n\nLaptop selalu dirawat:\n- Selalu pake sleeve case\n- Keyboard protector\n- Di ruangan AC\n- Ga pernah jatuh/kebentur\n\nKelengkapan:\n- Unit laptop\n- Charger original\n- Box lengkap\n- Bonus sleeve case premium\n\nDijual karena dapat laptop kantor. Harga nego tipis untuk yang serius. Bisa COD Jogja atau kirim2. Langsung chat aja ya buat tanya2 atau mau liat barangnya 🙏',
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
        'iPhone 12 Pro second mulus no minus! Face ID normal, baterai 89%, iCloud clean 💯\n\nKondisi fisik:\n- Body mulus no lecet\n- Layar masih original no gores\n- Kamera bersih, hasil foto jernih\n- Port charging normal\n- Speaker jernih\n\nKelengkapan:\n- Unit HP\n- Charger original Apple\n- Kabel lightning\n- Box + manual book\n- Bonus 2 case + tempered glass\n\nStorage 256GB masih lega, iOS latest version. IMEI terdaftar, garansi internasional masih aktif. Lokasi di Bali, bisa COD atau kirim2. Bisa tt dengan HP Android + cash. Harga masih bisa nego dikit kalo serius ya gan 🙏',
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
        'Bismillah, jual laptop gaming MSI GE76 Raider bekas kondisi super mulus! Laptop gaming flagship MSI dengan performa GILA 🔥\n\nSpesifikasi DEWA:\n- Intel Core i7 gen 11\n- RTX 3070 8GB GDDR6\n- RAM 32GB dual channel\n- SSD 1TB NVMe\n- Layar 17.3" 240Hz\n\nPemakaian baru 7 bulan, selalu di ruangan AC. Battery health 92%, semua port berfungsi normal. Thermal pasta baru diganti, suhu gaming stabil 75-80°C.\n\nKelengkapan lengkap:\n- Unit laptop\n- Charger 280W original\n- Box + manual book\n- Tas MSI original\n- Cooling pad gaming RGB\n\nHarga nego tipis untuk yang serius. Bisa COD Semarang atau kirim2. Dijual karena butuh dana kuliah. Chat aja ya buat tanya2 atau cek barang langsung 😊',
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
        'Jual Pixel 6 Pro second mulus like new! HP flagship Google dengan kamera terbaik dikelasnya 📱\n\nKondisi:\n- Fisik 98% mulus\n- Selalu pake case + tempered glass\n- Baterai masih 93%\n- All sensor normal\n- Kamera bersih, hasil foto super tajam\n\nSpek canggih:\n- Chipset Google Tensor\n- RAM 12GB\n- Storage 256GB\n- Layar 120Hz QHD+\n- Update Android terbaru\n\nFullset dengan:\n- Unit HP\n- Charger 30W\n- Kabel USB-C\n- Box + manual book\n- Bonus 3 case premium\n\nIMEI aman terdaftar, bukan BM. Lokasi Makassar, bisa COD atau kirim2. Bisa TT dengan iPhone + cash. Chat WA aja ya buat nego atau cek barang 🙏',
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