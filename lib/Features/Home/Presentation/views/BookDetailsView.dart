// ignore_for_file: file_names

import 'package:bookly_app/Features/Home/presentation/Views/Widgets/BookdetailsviewBody.dart';
import 'package:flutter/material.dart';

class Bookdetailsview extends StatelessWidget {
  const Bookdetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.close)],
      ),
      body: BookdetailsviewBody(),
    );
  }
}
