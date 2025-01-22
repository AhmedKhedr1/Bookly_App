import 'package:bookly_app/Core/utils/AppRouter.dart';
import 'package:bookly_app/Core/utils/Styless.dart';
import 'package:bookly_app/Features/Search/presentation/Views/Widgets/CustomSearchtextField.dart';
import 'package:bookly_app/Features/Search/presentation/Views/Widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: CustomSearchtextField(),
              )),
              IconButton(onPressed: () {}, icon: const Icon(Icons.close))
            ],
          ),
          const Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
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
            ),
          )
        ],
      ),
    );
  }
}
