import 'package:bookly_app/Core/utils/Styless.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/BestSellerListView.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/CustomAppBar.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/FeaturedListView.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const FeaturedListView(),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Best Seller',
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: BestSellerListView()),
        ),
      ],
    );
  }
}
