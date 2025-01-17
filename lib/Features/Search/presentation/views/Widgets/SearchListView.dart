
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BestSellerItem.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return const Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          child: const BestSelleritem(),
        );
      },
      itemCount: 10,
    );
  }
}