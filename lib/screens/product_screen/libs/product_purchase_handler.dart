import 'package:flutter/material.dart';

class ProductPurchaseHandler {
  static void submitOriginalPrice(
    BuildContext context,
    String price,
    Function(String) onBargainSubmitted,
  ) {
    onBargainSubmitted(price);
    Navigator.of(context).pop();
  }

  static void submitBargain(
    String bargainPrice,
    Function(void Function()) setState,
    Function(String) onBargainSubmitted,
    Function(String) onPriceSubmitted,
  ) {
    setState(() {
      onPriceSubmitted(bargainPrice);
    });
    onBargainSubmitted(bargainPrice);
  }

  static void checkout(
    BuildContext context,
    bool bargainify,
    String price,
    Function(String) onBargainSubmitted,
  ) {
    if (!bargainify) {
      onBargainSubmitted(price);
    }
    Navigator.of(context).pop();
  }
}