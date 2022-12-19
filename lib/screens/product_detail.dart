import 'package:dev_job/models/Product.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_nav_bar.dart';

class ProductDetailScreen extends StatelessWidget {
 // final Product product;
//const ProductDetailScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightBlue, Colors.blueAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.2, 0.9],
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarForApp(
          indexNum: 2,
        ),
        body: const Center(
         child: Text('hola'),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Product'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.blueAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.2, 0.9],
              ),
            ),
          ),
        ),


      ),
    );
  }
}

