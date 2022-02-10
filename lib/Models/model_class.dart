

import 'package:flutter/cupertino.dart';

class DummyProduct{
  int? id;
  String? name;
  String? image;
  int? price;
  int? cart;
  int? item_count;
  DummyProduct({this.id, this.name, this.image, this.price, this.cart, this.item_count});

}

List<DummyProduct>products = [
  DummyProduct(
      id: 1,
      name: "product A",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 100,
      cart: 0,
      item_count:1,
  ),
  DummyProduct(
      id: 2,
      name: "product b",
      image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80",
      price: 10,
      cart: 0,
      item_count:1,
  ),
  DummyProduct(
      id: 3,
      name: "product c",
      image: "https://i.ytimg.com/vi/ETsekJKsr3M/maxresdefault.jpg",
      price: 170,
      cart: 0,
      item_count:1,
  ),
  DummyProduct(
      id: 4,
      name: "product d",
      image: "https://images.pexels.com/photos/1667088/pexels-photo-1667088.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      price: 100,
      cart: 0,
      item_count:1,
  ),
  DummyProduct(
      id: 5,
      name: "product e",
      image: "https://www.dropicts.com/wp-content/uploads/7-Best-Product-Photography-Ideas-To-Sell-More-1024x742.jpg",
      price: 70,
      cart: 0,
      item_count:1,
  ),
  DummyProduct(
      id: 6,
      name: "product Ae",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRjnXZWVaNMWrMu6QaAKiiLx2ZQrC7YG_D2g&usqp=CAU",
      price: 50,
      cart: 0,
      item_count:1,
  ),
  DummyProduct(
      id: 7,
      name: "product h",
      image: "http://bdphotographers.com/upload/post-image/1532160119IMG_0237-fb.jpg",
      price: 120,
      cart: 0,
      item_count:1,
  ),
  DummyProduct(
      id: 8,
      name: "product k",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 15,
      cart: 0,
      item_count:1,
  ),
];


class CartFunction extends ChangeNotifier {
  int? price = 0;
  int? count = 0;
  int? total_price = 0;
  int? cart_length = 0;
  void add() {
    count = count! + 1;
    cart_length = cart_length! + 1;
    total_price = total_price! + price!;
    notifyListeners();
  }
  void remove() {
    cart_length = cart_length! - 1;
    total_price = total_price! - price! * count!;
    notifyListeners();
  }
  void add1()
  {
    count = count! + 1;
    total_price = total_price! + price!;
    notifyListeners();
  }
  void remove1(){
    count = count! - 1;
    total_price = total_price! - price!;
    notifyListeners();
  }
}


List<DummyProduct>products1 = [];