import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  final List<String> products; // Accept a list of strings

  const ProductsList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      shrinkWrap: true, // Dynamic width sm height lah
      physics: NeverScrollableScrollPhysics(), // Jadi yg didalem "kotak bwt list product nya" gak bisa di scroll klo pake ini
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey),
          ),
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              //Image.asset(), Products Thumbnail
              Container(
                padding: EdgeInsets.all(10.0),
                child:
                Column(
                  children: <Widget> [
                    Text(
                      products[index], // Display the product name
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                      softWrap: true, // Make the text wrap to the next line
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      "Harga", // Display the product name
                      style: const TextStyle(
                        fontSize: 11,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                )
              )
            ]
          ),
        );
      },
    );
  }
}