import 'package:bookly_app/Features/Home/Presentation/views/widgets/FeaturedBookListView.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/custom_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        customAppBar(),
        FeaturedBookListView()
         
      ],
    );
  }
}