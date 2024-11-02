
import 'package:bookly_app/core/Widgets/Custom_Button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(

      padding:  EdgeInsets.symmetric(horizontal: 8),
      child:  Row(
        children: [
           CustomButton(
            backgroundColor: Colors.white,
            textcolor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12)
            ), text: '19.99',
          ),
          CustomButton(
            backgroundColor: Color(0xffEf8262),
            textcolor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12)
            ), text: 'Free preview',
          ),
        ],
      ),
    );
  }
}
