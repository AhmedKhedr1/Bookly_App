import 'package:bookly_app/Features/Home/Presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class Similarbooklistview extends StatelessWidget {
  const Similarbooklistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.16,
      child: ListView.builder(
        itemBuilder:(context,index){
          return CustomBookImage();
        } ,
        itemCount:5 ,
        scrollDirection: Axis.horizontal,
        
      ),
    );
  }
}