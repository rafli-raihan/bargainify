import 'package:flutter/material.dart';

class ProductPurchaseSheet extends StatefulWidget {
  final String productName;
  final String price;
  final bool bargainify;
  final Function(String) onBargainSubmitted;

  ProductPurchaseSheet({
    required this.productName,
    required this.price,
    required this.bargainify,
    required this.onBargainSubmitted,
  });

  @override
  _ProductPurchaseSheetState createState() => _ProductPurchaseSheetState();
}

class _ProductPurchaseSheetState extends State<ProductPurchaseSheet> {
  final TextEditingController _bargainController = TextEditingController();
  bool _hasBargainSubmitted = false;
  String _submittedBargainPrice = '';

  @override
  Widget build(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;

    return Padding(
      padding: viewInsets,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.9,
        ),
        color: Theme.of(context).colorScheme.surface.withOpacity(1),
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
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
                      ElevatedButton(
                        onPressed: () {
                          if (!widget.bargainify) {
                            // For unbargainable products, submit original price
                            _submitOriginalPrice();
                          } else if (_bargainController.text.isNotEmpty && !_hasBargainSubmitted) {
                            // For bargainable products with input
                            _submitBargain();
                          } else {
                            // For checkout
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
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bargainController.dispose();
    super.dispose();
  }

  void _submitOriginalPrice() {
    widget.onBargainSubmitted(widget.price);
    Navigator.of(context).pop();
  }

  void _submitBargain() {
    final bargainPrice = _bargainController.text;
    setState(() {
      _hasBargainSubmitted = true;
      _submittedBargainPrice = bargainPrice;
    });
    widget.onBargainSubmitted(bargainPrice);
  }

  void _checkout() {
    if (!widget.bargainify) {
      widget.onBargainSubmitted(widget.price);
    }
    Navigator.of(context).pop();
  }
}