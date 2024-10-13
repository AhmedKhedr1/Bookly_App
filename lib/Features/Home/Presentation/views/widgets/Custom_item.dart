import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Custom_item extends StatelessWidget {
  const Custom_item({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2/3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
              image:const DecorationImage(
                fit: BoxFit.fill,
            image: AssetImage(AssetsData.testimage),
          )),
        ),
      ),
    );
  }
}
