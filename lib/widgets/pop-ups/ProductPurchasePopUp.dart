import 'package:flutter/material.dart';

class ProductPurchasePopUp extends StatefulWidget {
  final String productName;
  final String price;
  final bool bargainify;

  ProductPurchasePopUp({
    required this.productName,
    required this.price,
    required this.bargainify,
  });

  @override
  _ProductPurchasePopUpState createState() => _ProductPurchasePopUpState();
}

class _ProductPurchasePopUpState extends State<ProductPurchasePopUp> {
  final TextEditingController _bargainController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Beli Produk: ${widget.productName}'),
      content: SingleChildScrollView( 
        child: ListBody(
          children: [
            Text(
              'Harga: ${widget.price}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            if (widget.bargainify)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ajukan Harga Tawar (Opsional):',
                    style: TextStyle(fontSize: 14),
                  ),
                  TextField(
                    controller: _bargainController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan harga tawar',
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ElevatedButton(
              onPressed: () {
                if (widget.bargainify && _bargainController.text.isNotEmpty) {
                  _submitBargain();
                } else {
                  _checkout();
                }
              },
              child: Text(widget.bargainify
                  ? (_bargainController.text.isEmpty ? 'Checkout' : 'Submit Tawar')
                  : 'Checkout'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Batal'),
        ),
      ],
    );
  }

  void _submitBargain() {
    final bargainPrice = _bargainController.text;
    print('Harga tawar yang diajukan: $bargainPrice');
    Navigator.of(context).pop();
  }

  void _checkout() {
    print('Checkout dengan harga: ${widget.price}');
    Navigator.of(context).pop();
  }
}
