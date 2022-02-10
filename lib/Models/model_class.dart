

import 'package:flutter/cupertino.dart';

class DummyProduct{
  String? name;
  String? image;
  int? price;
  int? cart;
  DummyProduct({this.name, this.image, this.price, this.cart});

}

List<DummyProduct>products = [
  DummyProduct(
      name: "product A",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 100,
      cart: 0
  ),
  DummyProduct(
      name: "product b",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 10,
      cart: 0
  ),
  DummyProduct(
      name: "product c",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 170,
      cart: 0
  ),
  DummyProduct(
      name: "product d",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 100,
      cart: 0
  ),
  DummyProduct(
      name: "product e",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 70,
      cart: 0
  ),
  DummyProduct(
      name: "product Ae",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 50,
      cart: 0
  ),
  DummyProduct(
      name: "product h",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 120,
      cart: 0
  ),
  DummyProduct(
      name: "product k",
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&w=1000&q=80",
      price: 15,
      cart: 0
  ),
];

class CartData{
  String? name;
  String? image;
  int? price;
  int? count;
  CartData({this.name, this.image, this.price, this.count});
}

class CartFunction extends ChangeNotifier{
  int index = 0;
  void ad_list(String name, String image, int price, int count){


  }
}