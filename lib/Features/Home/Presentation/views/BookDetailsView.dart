// ignore_for_file: file_names

import 'package:bookly_app/Conatants.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/BookdetailsviewBody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bookdetailsview extends StatelessWidget {
  const Bookdetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        automaticallyImplyLeading: false,
        title: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 28),
            child: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: const BookdetailsviewBody(),
    );
  }
}
