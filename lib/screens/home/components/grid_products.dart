import 'package:dev_job/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../components/product_card.dart';
import '../../../config_screen.dart';
import '../../../models/Product.dart';

class GridProducts extends StatelessWidget {
  final List<Product> products;
  const GridProducts({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),

        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              mainAxisExtent: 310,
            ),
            itemCount: products.length,
            itemBuilder: (_, index) {
              return ProductCard(product: products[index]);
            },
          ),
        ),
      ],
    );
  }
}
