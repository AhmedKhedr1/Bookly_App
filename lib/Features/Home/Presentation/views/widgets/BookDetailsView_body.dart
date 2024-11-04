import 'package:bookly_app/Conatants.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookAction.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookRating.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/FeaturedBookListView.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/SimilarBookListView.dart';
import 'package:bookly_app/core/utils/AppRouter.dart';
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookdetailsviewBody extends StatelessWidget {
  const BookdetailsviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: KPrimaryColor,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).push(Approuter.kHomeView);
            },
            icon: const Icon(
              Icons.close,
              size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.2, right: width * 0.1),
              child: const SizedBox(height: 280, child: CustomBookImage()),
            ),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BookRating(),
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BookAction(),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like ',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w900,fontSize: 14),
              ),
            ),
            SizedBox(height: 15,),
            Similarbooklistview()
          ],
        ),
      ),
    );
  }
}
