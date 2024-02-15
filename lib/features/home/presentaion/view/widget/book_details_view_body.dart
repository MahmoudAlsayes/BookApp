import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/view/widget/book_rating.dart';
import 'package:bookly/features/home/presentaion/view/widget/custome_book_iteam.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custome_buttom.dart';
import 'book_action.dart';
import 'custome_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(

        children: [
          const CustomeBookDetailsAppBar(),
          const SizedBox(
            height: 33,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .21),
            child: const CustomeBookImage(),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("The Jungle Book",
              style: Styles.textStyle30,
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          const SizedBox(
            height: 4,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(
            height: 37,
          ),
          const BookAction(),
          const SizedBox(
            height: 49,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),

            ),
          ),
        ],
      ),
    );
  }
}
