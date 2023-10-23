import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/context_extension.dart';
import 'package:next_starter/data/models/cart/cart_model.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class CartMainPage extends StatelessWidget {
  const CartMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: const Text('Cart Page'),
      ),
      body: Column(
        children: List.generate(
          10,
          (index) =>  ListTile(
            onTap: () {
              context.route.push(CartDetailRoute(model: CartModel(name: 'Produk $index', price: (Random(1000).nextInt(10000) * e).toInt())));
            },
            leading: const Icon(CupertinoIcons.cart, color: Colors.blueAccent),
            title:  Text('Produk $index'),
            subtitle: Text('\$${(Random(1000).nextInt(10000) * e).toStringAsFixed(2)}'),
          ),
        ),
      ).p16().scrollVertical(),
    );
  }
}
