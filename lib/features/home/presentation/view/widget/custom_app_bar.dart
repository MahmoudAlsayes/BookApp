import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 46, right: 30, left: 30),
      child: Row(
        children: [
          const Image(
            image: AssetImage(AssetsData.logo),
            height: 25,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KSearch);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass,
              size: 22),
          ),
        ],
      ),
    );
  }
}
