import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  CustomBookImage({super.key, this.width});
  double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      width: width,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage('assets/images/test_image.png')),
          ),
        ),
      ),
    );
  }
}
