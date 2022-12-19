import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:dev_job/models/Product.dart';

import 'package:dev_job/screens/home/components/grid_products.dart';
import 'package:dev_job/Services/api_service.dart';
import '../../../config_screen.dart';
import 'home_header.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  const Body({super.key,});
  ApiFakeStoreService get service => GetIt.instance<ApiFakeStoreService>();
  // ApiFakeStoreService get service -> GetIt.I<ApiFakeStoreService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Center(
            child: FutureBuilder(
                future: service.getAllProducts(),
                builder: (_, AsyncSnapshot<List<Product>> snapshot) {
                  if (!snapshot.hasData) {
                    // return const CircularProgressIndicator();
                  }

                  final List<Product> products = snapshot.data ?? [];
                  return Column(
                    children: [

                      GridProducts(products: products),
                    ],
                  );
                }),
          )),
    );
  }
}
