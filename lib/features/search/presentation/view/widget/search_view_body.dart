import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custome_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(left: 30.0, right: 30, top: 10),
        child: Column(
          children: [
            CustomeSearchTextField(),

          ],
        ),
      ),
    );
  }
}
