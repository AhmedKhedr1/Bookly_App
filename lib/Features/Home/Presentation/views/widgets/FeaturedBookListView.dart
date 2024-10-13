
import 'package:bookly_app/Features/Home/Presentation/views/widgets/Custom_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        itemBuilder:(context,index){
          return Custom_item();
        } ,
        itemCount:5 ,
        scrollDirection: Axis.horizontal,
        
      ),
    );
  }
}