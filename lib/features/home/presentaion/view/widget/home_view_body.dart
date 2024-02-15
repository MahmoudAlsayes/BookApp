import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_saller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(

      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomeAppBar(),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: FeaturedBookListView(),
              ),
              SizedBox(
                height: 49,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: BestSallerListView(),
              ),
            ],
          ),
        ),


      ],
    );
  }
}
