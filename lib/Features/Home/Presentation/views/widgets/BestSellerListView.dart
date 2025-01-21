// ignore_for_file: file_names

import 'package:bookly_app/Core/utils/AppRouter.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/BestSellerItem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(Approuter.KBookDetailsView);
              },
              child: BestSellerItem()),
        );
      },
    );
  }
}
