import 'package:assignment/Models/model_class.dart';
import 'package:flutter/material.dart';


class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    var S_height = MediaQuery.of(context).size.height;
    var S_width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 20, right: 0, bottom: 15),
          child: Container(
            height: S_height * .2,
            color: Colors.black26,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 15),
          child: Container(
            height: S_height * .6,
            color: Colors.blueGrey,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext ctx, index){
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/a1.jpg"),
                          Text("${products[index].name}"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${products[index].price}"),
                              TextButton(
                                onPressed: () {},
                                child: Icon(Icons.add,color: Colors.black,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
            ),
          ),
        ),
      ],
    );
  }
}
