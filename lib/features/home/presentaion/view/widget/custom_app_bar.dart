import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10,bottom: 46,right: 30,left: 30),
      child: Row(
        children: [
          Image(
            image: AssetImage(AssetsData.logo),
            height: 25,
          ),
          Spacer(),
          Icon(FontAwesomeIcons.magnifyingGlass),
        ],
      ),
    );
  }
}
