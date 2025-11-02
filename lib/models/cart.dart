import 'package:app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '2346',
      desc: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/1.jpg',
    ),
    Shoe(
      name: 'Redtape',
      price: '1299',
      desc: 'Trend at affordable price for College student',
      imagePath: 'lib/images/2.jpg',
    ),
    Shoe(
      name: 'U.S. Polo',
      price: '2200',
      desc: 'Something which makes us stand out from normal people',
      imagePath: 'lib/images/3.jpg',
    ),
    Shoe(
      name: 'Nike',
      price: '4500',
      desc: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/4.jpg',
    ),
    Shoe(
      name: 'Flying Machine',
      price: '999',
      desc: 'The design which made you fly higher than birds',
      imagePath: 'lib/images/5.jpg',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: '1285',
      desc: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/6.jpg',
    ),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
