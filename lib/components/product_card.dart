import 'dart:math';

import 'package:dev_job/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:dev_job/models/Product.dart';
import 'package:dev_job/screens/product_detail.dart';
import '../config_screen.dart';
import '../constants.dart';
import '../screens/product_detail.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;



  @override
  Widget build(BuildContext context) {

    final _mediaQueryData = MediaQuery.of(context);
    final screenWidth = _mediaQueryData.size.width /800 ;
    final screenHeight = _mediaQueryData.size.height /300 ;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 2),
      child: SizedBox(
        width: screenWidth /2,
        child: GestureDetector(
          onTap: () =>
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => DetailsScreen(product: product))),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(screenHeight * 2),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.id.toString() +  Random().nextInt((2000 + 1) - 1).toString() + product.title.toString(),
                    child: Image.network(product.image!)
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price.toString()}",
                    style: TextStyle(
                      fontSize: screenWidth *2,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
)
    );
  }
}
