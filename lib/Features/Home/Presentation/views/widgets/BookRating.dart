import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      
      children: [
        Icon(Icons.star,color: Colors.yellow,size: 21,),
        SizedBox(
          width: 8,
        ),
        Text('4.8',style: Styles.textStyle16,),
        SizedBox(width: 6,),
        Text('(2390)',style: Styles.textStyle14,),
      ],
    );
  }
}
