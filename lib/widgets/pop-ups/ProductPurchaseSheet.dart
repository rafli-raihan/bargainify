import 'package:flutter/material.dart';

class ProductPurchaseSheet extends StatefulWidget {
  final String productName;
  final String price;
  final bool bargainify;

  ProductPurchaseSheet({
    required this.productName,
    required this.price,
    required this.bargainify,
  });

  @override
  _ProductPurchaseSheetState createState() => _ProductPurchaseSheetState();
}

class _ProductPurchaseSheetState extends State<ProductPurchaseSheet> {
  final TextEditingController _bargainController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Theme.of(context).colorScheme.surface.withOpacity(1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    'Beli Produk: ${widget.productName}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
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
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Batal'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitBargain() {
    final bargainPrice = _bargainController.text;
    // Logic to handle bargain submission
    print('Harga tawar yang diajukan: $bargainPrice');
    Navigator.of(context).pop();
  }

  void _checkout() {
    // Logic to proceed to checkout
    print('Checkout dengan harga: ${widget.price}');
    Navigator.of(context).pop();
  }
}
