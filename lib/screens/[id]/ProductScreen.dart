import 'package:flutter/material.dart';

    class ProductScreen extends StatelessWidget {
      const ProductScreen({Key? key}) : super(key: key);
     
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                /* Product Photos */

                /* Product Listing / Name */
                Text(
                  "Nvidia RTX 4090 - Founders Edition 24GB GDDR6X",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                /* Harga Product */
                Text(
                  "Rp.11.000.000",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                /* Action List */
                Container(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width > 450 ? 450 : MediaQuery.of(context).size.width,
                    ), // Constrain ini ceritanya sama lah yak kya max-w di tailwind
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                            onPressed: () {}, 
                            icon: const Icon(
                              Icons.shopping_bag_rounded
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Text("Beli"),
                        ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {}, 
                                icon: const Icon(
                                  Icons.chat_bubble_rounded
                                  ),
                                ),
                                SizedBox(height: 2.0),
                                Text("Chat Penjual"),
                        ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                              IconButton(
                                onPressed: () {}, 
                                icon: const Icon(
                                  Icons.shopping_bag_rounded,
                                  ),
                                ),
                                SizedBox(height: 2.0),
                                Text("Share"),
                        ]),
                      ],
                    ),
                  ),
                ),
              
              /* Product Description */
              Container(
                child: ConstrainedBox(constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width > 768 ? 768 : MediaQuery.of(context).size.width),
                      child: Text(
                        'Dijual RTX 4090 Founders Edition 24GB dalam kondisi sangat baik. Kondisinya mulus tanpa cacat fisik dan telah dirawat dengan baik sejak pembelian. Penggunaan sebelumnya hanya untuk gaming dan editing ringan, tidak pernah digunakan untuk mining.\n\nSemua fungsi berjalan normal tanpa kendala, dan performanya tetap maksimal seperti baru. Barang ini dilengkapi dengan dus asli, adaptor daya, dan buku panduan. Jika masih berlaku, garansi resmi akan disertakan.\n\nAlasan penjualan adalah karena upgrade. Harga nego, chat untuk informasi lebih lanjut!',
                        style: TextStyle(fontSize: 16.0),
                      ),
                  ),
                )
              ],
            ),
          ),
        );
      }
    }