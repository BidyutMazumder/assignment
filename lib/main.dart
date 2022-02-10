import 'package:assignment/Models/model_class.dart';
import 'package:flutter/material.dart';
import 'Screen/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (Context) => CartFunction(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<CartFunction>(context);
    return MaterialApp(
      title: "Asignment",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
