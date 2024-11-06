import 'package:bookly_app/Features/Search/presentation/views/Widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Searchviewbody()),
    );
  }
}