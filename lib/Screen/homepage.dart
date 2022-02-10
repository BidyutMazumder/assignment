import 'package:assignment/Screen/product.dart';
import 'package:flutter/material.dart';
import 'cart.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages = [
    Product(),
    Cart(),
  ];

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                      print(_currentIndex);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Home",
                        style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                      print(_currentIndex);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.shopping_cart),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Cart",
                        style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ""

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: ""
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },

      ),
      body: _pages[_currentIndex],
    );
  }
}
