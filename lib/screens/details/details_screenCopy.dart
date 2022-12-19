import 'package:flutter/material.dart';
import 'package:dev_job/models/Product.dart';

import 'components/body.dart';
import 'components/custom_app_bar.dart';



class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key,required this.product });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: Body(product: product),
    );
  }
}

