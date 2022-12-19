import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:dev_job/config_screen.dart';
import 'package:dev_job/models/Cart.dart';
import 'package:dev_job/models/product.dart';
import 'package:dev_job/Services/api_service.dart';

import '../../../models/cartUpdate.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ApiFakeStoreService get service => GetIt.instance<ApiFakeStoreService>();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 20),
        child: FutureBuilder(
            future: service.getCart('1'),
            builder: (_, AsyncSnapshot<CartUpdate> snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }

              final CartUpdate products = snapshot.data!;
              final jsonProduct = products.toJson();

              return Center(
                child: Text('hola'),
              );

            }));
  }
}
