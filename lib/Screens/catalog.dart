import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/Models/cart_model.dart';
import 'package:untitled4/Models/product_model.dart';
import 'package:untitled4/Screens/cart.dart';
import 'package:get/get.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          iconTheme: IconThemeData(color: Colors.grey[800])
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Select your product',
                style: GoogleFonts.abel(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            Flexible(
                child: ListView.builder(
                    itemCount: Product.products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CatalogProductsCard(index: index);
                    })),
            const SizedBox(height: 80,),

            Row(
              mainAxisAlignment:MainAxisAlignment.end ,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child: FloatingActionButton(
                    child: const Icon(Icons.shopping_cart, size: 50,),
                    onPressed: ()=>  Navigator. of(context).push(MaterialPageRoute(builder: (context)=> const Cart())),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class CatalogProductsCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;

  CatalogProductsCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(Product.products[index].imageUrl),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(child: Text(Product.products[index].name)),
            Expanded(child: Text('${Product.products[index].price}')),
            IconButton(
             icon: Icon(
                Icons.add_circle,
              ), onPressed: () { cartController.addProduct(Product.products[index]); },
            ),
          ],
        ));
  }
}
