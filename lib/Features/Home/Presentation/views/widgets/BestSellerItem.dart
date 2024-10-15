import 'package:bookly_app/Conatants.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookRating.dart';
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSelleritem extends StatelessWidget {
  const BestSelleritem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookdetailsView');
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            Image.asset(AssetsData.testimage),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the goblet of fire ',
                      style:
                          Styles.textStyle20.copyWith(fontFamily: KGtSectrafine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Text(
                    'J.K.Rowling',
                    style: Styles.textStyle14,
                  ),
                  Container(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19.9 ',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        BookRating()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
