
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of item on shop

  final List _shopItems = [
    // [ itemName, itemPrice, itemPath, color ]
    ['Бургер', "120.00", 'lib/icons/burger.png', Colors.green],
    ['Паста', "340.00", 'lib/icons/pasta.png', Colors.redAccent],
    ['Пицца', "210.00", 'lib/icons/pizza.png', Colors.yellow],
    ['Тако', "175.00", 'lib/icons/taco.png', Colors.orange],
  ];

  get shopItems => _shopItems;

  List _cartItems = [];

  get cartItems => _cartItems;

  // add items to cart;
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove items
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotalPrice(){
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}
