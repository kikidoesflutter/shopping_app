import 'package:flutter/material.dart';

import '../Models/cart_product.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey[800]),),
body: Column(
  children: [
    CartProduct(),
    // CartTotal(),
  ],
),
    );
  }
}
