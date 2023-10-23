import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/data/models/cart/cart_model.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class CartDetailPage extends StatelessWidget {
  const CartDetailPage({super.key, required this.model});

  final CartModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Detail Cart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '${model.name} - \$${model.price}',
              style: CustomTextTheme.paragraph1,
            ),
          )
        ],
      ).p16(),
    );
  }
}
