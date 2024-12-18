import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textcolor,
      required this.borderRadius, required this.text});

  final Color backgroundColor, textcolor;
  final BorderRadius borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: 150,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        onPressed: () {},
        child: Text(
         text,
          style: Styles.textStyle18.copyWith(color: textcolor),
        ),
      ),
    );
  }
}
