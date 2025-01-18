import 'package:bookly_app/Conatants.dart';
import 'package:bookly_app/Core/utils/Styless.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/BookRating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/test_image.png')),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(fontFamily: KGtSectrafine),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'J.K.Rowling',
                  style: Styles.textStyle14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    '19.99 \$',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  BookRating(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
