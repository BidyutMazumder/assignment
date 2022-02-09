import 'package:assignment/Screen/product.dart';
import 'package:flutter/material.dart';
import 'bottom.dart';
import 'menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Product(),
      drawer: Menu(),
      //bottomNavigationBar: Bottom(),
    );
  }
}
