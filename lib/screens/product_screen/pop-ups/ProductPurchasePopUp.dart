import 'package:flutter/material.dart';
import '../libs/product_purchase_handler.dart';

class ProductPurchasePopUp extends StatefulWidget {
  final String productName;
  final String price;
  final bool bargainify;
  final Function(String) onBargainSubmitted;

  ProductPurchasePopUp({
    required this.productName,
    required this.price,
    required this.bargainify,
    required this.onBargainSubmitted,
  });

  @override
  _ProductPurchasePopUpState createState() => _ProductPurchasePopUpState();
}

class _ProductPurchasePopUpState extends State<ProductPurchasePopUp> {
  final TextEditingController _bargainController = TextEditingController();
  bool _hasBargainSubmitted = false;
  String _submittedBargainPrice = '';

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
            if (widget.bargainify && !_hasBargainSubmitted)
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
                      prefixText: 'Rp ',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            if (_hasBargainSubmitted)
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Anda telah mengajukan harga tawaran anda:\nRp $_submittedBargainPrice',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (!widget.bargainify || _bargainController.text.isEmpty) {
                    _submitOriginalPrice();
                  } else if (_bargainController.text.isNotEmpty && !_hasBargainSubmitted) {
                    _submitBargain();
                  } else {
                    _checkout();
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: Text(
                  !widget.bargainify ? 'Checkout' :
                  (_hasBargainSubmitted ? 'Checkout' : 
                  (_bargainController.text.isEmpty ? 'Checkout' : 'Submit Tawar')),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
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

  @override
  void dispose() {
    _bargainController.dispose();
    super.dispose();
  }

  void _submitOriginalPrice() {
    ProductPurchaseHandler.submitOriginalPrice(
      context,
      widget.price,
      widget.onBargainSubmitted,
    );
  }

  void _submitBargain() {
    ProductPurchaseHandler.submitBargain(
      _bargainController.text,
      setState,
      widget.onBargainSubmitted,
      (String price) {
        _hasBargainSubmitted = true;
        _submittedBargainPrice = price;
      },
    );
  }

  void _checkout() {
    ProductPurchaseHandler.checkout(
      context,
      widget.bargainify,
      widget.price,
      widget.onBargainSubmitted,
    );
  }
}