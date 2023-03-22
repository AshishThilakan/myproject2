import 'package:flutter/material.dart';
import 'package:myproject/pass%20data%20screen/dummydata.dart';
import 'package:myproject/pass%20data%20screen/product2.dart';

void main() {
  runApp(MaterialApp(home: ProductScreen(),
  routes: {
    "second" : (context)=> ProductList(),
  },
  ));
}

class ProductScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List"),),
        body: ListView(
    padding: EdgeInsets.all(15),
    children: dummyproducts.map((product) {
      return TextButton(onPressed: ()=>gotonext(context,product["id"]),
          child: Text("${product["name"]}"));
    }).toList(),
    ),
    );


  }

 void gotonext(BuildContext context, product) {
    Navigator.of(context).pushNamed("second",arguments: product);
  }
}

