import 'package:bookly_app/Conatants.dart';
import 'package:bookly_app/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookdetailsviewBody extends StatelessWidget {
  const BookdetailsviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: KPrimaryColor,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).push(Approuter.kHomeView);
            },
            icon: const Icon(Icons.close,size: 30,)),
            actions: [IconButton(onPressed: () {
              
            }, icon:const Icon(Icons.shopping_cart,size: 30,))],
      ),
    );
  }
}
