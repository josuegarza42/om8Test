import 'package:flutter/material.dart';


import '../../../components/default_button.dart';
import '../../../config_screen.dart';
import '../../../models/Product.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProductImages(product: product),
            TopRoundedContainer(
              color: Colors.white,
              child: Column(
                children: [
                  ProductDescription(
                    product: product,
                    pressOnSeeMore: () {},
                  ),
                  TopRoundedContainer(
                    color: const Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 5 * 0.15,
                              right: 5 * 0.15,
                              bottom: 40,
                              top: 15,
                            ),
                            child: DefaultButton(
                              text: "Add To Cart",
                              press: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}