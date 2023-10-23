import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/context_extension.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  "https://blog-edutore-partner.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2022/05/31173505/POLINEMA.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Graha Polinema',
                    style: CustomTextTheme.paragraph2.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Malang, East Java, Indonesia',
                    style: CustomTextTheme.paragraph1.copyWith(color: Colors.grey),
                  ),
                ],
              ).expand(flex: 1),
              const Icon(
                CupertinoIcons.star_fill,
                color: Colors.amber,
                size: 18,
              ),
              const SizedBox(width: 8),
              Text(
                '41',
                style: CustomTextTheme.paragraph2,
              )
            ],
          ).p16(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.route.push(const CartMainRoute());
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(CupertinoIcons.phone_fill, color: Colors.blueAccent),
                        Text('Call', style: CustomTextTheme.paragraph1.copyWith(color: Colors.blueAccent)),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(CupertinoIcons.location_fill, color: Colors.blueAccent),
                      Text('Route', style: CustomTextTheme.paragraph1.copyWith(color: Colors.blueAccent)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(CupertinoIcons.share_solid, color: Colors.blueAccent),
                      Text('Share', style: CustomTextTheme.paragraph1.copyWith(color: Colors.blueAccent)),
                    ],
                  ),
                ],
              ).px(32),
              const SizedBox(height: 16),
              Text(
                'Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.',
                style: CustomTextTheme.paragraph1,
              )
            ],
          ).p16()
        ],
      ),
    );
  }
}
