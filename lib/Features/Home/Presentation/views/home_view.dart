import 'package:bookly_app/Features/Home/Presentation/views/widgets/home_viewbody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewbody(),
    );
  }
}