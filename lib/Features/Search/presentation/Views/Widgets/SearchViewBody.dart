import 'package:bookly_app/Core/utils/Styless.dart';
import 'package:bookly_app/Features/Search/presentation/Views/Widgets/CustomSearchtextField.dart';
import 'package:bookly_app/Features/Search/presentation/Views/Widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 60,
            ),
            child: CustomSearchtextField(),
          ),
          SizedBox(
            height: 16,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              )),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
