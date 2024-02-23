import 'package:flutter/material.dart';

import '../../../../../core/widgets/custome_buttom.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomeButtom(
              backGroundColor: Colors.white,
              fontColor: Colors.black,
              text: "19.99€",
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12),),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: CustomeButtom(
              backGroundColor: Color(0xffEF8262),
              fontColor: Colors.white,
              text: "Free preview",
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),),
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
