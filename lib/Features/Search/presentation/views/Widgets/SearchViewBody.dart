import 'package:bookly_app/Features/Search/presentation/views/Widgets/CustomSearchtextField.dart';
import 'package:bookly_app/Features/Search/presentation/views/Widgets/SearchListView.dart';
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: CustomSearchtextField(),
        ),
        SizedBox(height: 16,),
        Align(
          alignment: Alignment.topLeft,
          child: Text('Best Seller',style: Styles.textStyle18,)),
        SizedBox(height: 16,),
        Expanded(child: SearchListView())
      ],
    );
  }
}
