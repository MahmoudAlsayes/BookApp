import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/view/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';

import 'custome_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeSearchTextField(),

          Padding(
            padding: EdgeInsets.only(bottom: 10.0,top: 30),
            child: Text("Search Result",style: Styles.textStyle18,),
          ),
          Expanded(child: SearchResultListView()),

        ],
      ),
    );
  }
}
