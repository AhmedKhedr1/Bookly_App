import 'package:bookly_app/Features/Home/Presentation/views/widgets/FeaturedBookListView.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/custom_AppBar.dart';
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBar(),
          FeaturedBookListView(),
          Text('Best Seller ', style: Styles.TitleMeduim),
          
        ],
      ),
    );
  }
}
