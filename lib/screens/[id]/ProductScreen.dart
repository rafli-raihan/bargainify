import 'package:flutter/material.dart';

    class ProductScreen extends StatelessWidget {
      const ProductScreen({super.key});
     
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  /* Product Photos */
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: 
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width > 768 ? 768 : MediaQuery.of(context).size.width),
                          child:
                            ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Image.asset(
                                  'images/RTX_4090_samping.jpg',
                                ),
                                Image.network(
                                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.4b5ow-C_cTwMFHN8YQLLOwHaEK%26pid%3DApi&f=1&ipt=1cbaadab9a5625f9b2a081a10ea9a36e6337d833564722e972c158729f062db6&ipo=images'
                                ),
                                Image.network(
                                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.4rwjd95FH-4KSxcY8CNesQHaEK%26pid%3DApi&f=1&ipt=b5af9a547981ff8f36f7851d6a737d1cb8c6e348e3b12240f6e50ae22dbd6e07&ipo=images'
                                ),
                              ],
                          ), // ListView itu gunanya kya container tapi bisa di scroll isinya
                      ),
                  ),                

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

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
                    ],
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
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                    Icons.share_rounded,
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
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
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
          ),
        );
      }
    }