import 'package:bookly/features/home/presentaion/view/widget/similler_book_section.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custome_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomeBookDetailsAppBar(),
                SizedBox(
                  height: 33,
                ),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 49,
                  ),
                ),
                SimillerBookSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
