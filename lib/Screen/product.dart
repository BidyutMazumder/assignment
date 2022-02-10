import 'package:assignment/Models/model_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<CartFunction>(context);
    var S_height = MediaQuery.of(context).size.height;
    var S_width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
            padding:
                const EdgeInsets.only(left: 15, top: 20, right: 0, bottom: 15),
            child: Container(
              height: S_height * .2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.network(
                          "https://www.marketing91.com/wp-content/uploads/2020/02/Different-Steps-of-Product-Quality-Management.jpg",
                          height: S_height * .1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("category1"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.network(
                          "https://hbr.org/resources/images/article_assets/2020/04/Apr20_07_1162572100.jpg",
                           height: S_height * .1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Category 2"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.network(
                           "https://cdn.corporatefinanceinstitute.com/assets/product-differentiation-1024x683.jpeg",
                          height: S_height * .1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Category 3"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.network(
                          "https://dapm2plx9njzo.cloudfront.net/wp-content/uploads/2019/04/WRS-Product-Photography.jpg",
                          height: S_height * .1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Category 4"),
                      ],
                    ),
                  ),

                ],
              ),
            ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 15),
          child: Container(
            height: S_height * .55,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: products.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.network("${products[index].image}"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${products[index].name}"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${products[index].price}"),
                                  TextButton(
                                    onPressed: () {
                                      int v = 0;
                                      for(int i = 0; i < products1.length; i++)
                                        {
                                          if(products1[i].id == products[index].id){
                                            v = 1;
                                          }

                                        }
                                      if(v == 0){
                                        products1.add(products[index]);
                                        providerdata.price = products[index].price;
                                        providerdata.add();
                                      }
                                      else{
                                        showAlertDialog(context);
                                      }



                                    },
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                    decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
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

showAlertDialog(BuildContext context){
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("This Product already Add"),
    actions: [
      okButton,
    ],
  );


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}