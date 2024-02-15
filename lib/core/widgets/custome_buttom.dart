import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeButtom extends StatelessWidget {
  const CustomeButtom(
      {super.key,
      required this.backGroundColor,
      this.borderRadius,
      required this.fontColor,
      required this.text,
      this.fontSize,
      this.fontWeight});

  final Color backGroundColor;
  final BorderRadius? borderRadius;
  final Color fontColor;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: fontColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
