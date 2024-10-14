import 'package:bookly_app/Conatants.dart';
import 'package:bookly_app/Features/Splash/Presentation/views/Splach_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KPrimaryColor,
        textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),

      ),
      debugShowCheckedModeBanner: false,
      home:const SplachView(),
    );
  }
}
