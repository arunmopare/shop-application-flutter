import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    @required this.title,
    @required this.id,
    @required this.price,
    @required this.quantity,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(
    String productId,
    double price,
    String title,
    int quantity,
  ) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingCartItem) => CartItem(
          title: existingCartItem.title,
          id: existingCartItem.id,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
                title: title,
                id: DateTime.now().toString(),
                price: price,
                quantity: 1,
              ));
    }
  }
}
