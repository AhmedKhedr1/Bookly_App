import 'package:bookly_app/core/utils/AppRouter.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 110,
            height: 20,
          ),
          IconButton(
            icon: const Icon(Icons.search,size: 32,),
            onPressed: () {
              GoRouter.of(context).push(Approuter.kSearchView);
            },
          )
        ],
      ),
    );
  }
}
