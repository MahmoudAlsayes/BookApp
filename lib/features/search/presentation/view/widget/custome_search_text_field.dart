import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeSearchTextField extends StatelessWidget {
  const CustomeSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // keyboardType: TextInputType.number,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),

        focusedBorder: buildOutlineInputBorder(),
        hintText: "search!",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
              opacity: 0.7,
              child: Icon(FontAwesomeIcons.magnifyingGlass, size: 22,color: Colors.white)),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
