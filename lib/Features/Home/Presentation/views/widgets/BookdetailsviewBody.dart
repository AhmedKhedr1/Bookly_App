import 'package:bookly_app/Core/utils/Styless.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/BookRating.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/BooksAction.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class BookdetailsviewBody extends StatelessWidget {
  const BookdetailsviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
            child: CustomBookImage(
              width: MediaQuery.of(context).size.width * .44,
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                color: Colors.white.withOpacity(0.7),
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookRating(),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const BooksAction(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can also Like',
              style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ), const SizedBox(
            height: 16,
          ),
           SimilarBooksListView()
        ],
      ),
    );
  }
}

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.only(right: 10),
              child: CustomBookImage());
        },
      ),
    );
  }
}
