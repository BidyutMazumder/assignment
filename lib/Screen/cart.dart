import 'package:assignment/Models/model_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<CartFunction>(context);
    var S_height = MediaQuery.of(context).size.height;
    var S_width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
            height: S_height * .725,
            color: Colors.blue,
            child: ListView.builder(
              itemCount: products1.length,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 150,
                          child: Image.network(
                            "${products1[index].image}",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 6,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "${products1[index].name}",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("${products1[index].price}",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      providerdata.count =
                                          products1[index].item_count;
                                      providerdata.price =
                                          products1[index].price;
                                      if (providerdata.count! > 0) {
                                        providerdata.remove1();
                                      }
                                      products1[index].item_count =
                                          providerdata.count;
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${products1[index].item_count}",
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      providerdata.count =
                                          products1[index].item_count;
                                      providerdata.price =
                                          products1[index].price;
                                      providerdata.add1();
                                      products1[index].item_count =
                                          providerdata.count;
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              providerdata.count = products1[index].item_count;
                              providerdata.price = products1[index].price;
                              providerdata.remove();
                              products1.removeAt(index);
                            },
                            child: Icon(
                              Icons.delete,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )),
        Container(
          height: S_height * .1,
          color: Colors.blueGrey,
          child: Row(
            children: [
              Text(
                "Total: ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                providerdata.total_price.toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
