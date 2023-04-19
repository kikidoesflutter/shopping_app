import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'catalog.dart';

class CAFE extends StatefulWidget {
  const CAFE({Key? key}) : super(key: key);

  @override
  State<CAFE> createState() => _CAFEState();
}

class _CAFEState extends State<CAFE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              'Welcome Back',
              style: GoogleFonts.timmana(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              "Let's begin your shopping experience",
              style: GoogleFonts.timmana(
                fontSize: 25,
              ),
            ),
          ),
          const Divider(),
          const Spacer(),
          const SizedBox(
            height: 50,
          ),
          const Center(
              child: Image(
            image: AssetImage("images/cart.webp"),
            height: 350,
          )),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
                width: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const Catalog())),
                  child: const Text("Start Shopping"),
                ),
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}
