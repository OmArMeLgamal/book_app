import 'package:bookly_app/Features/Splash/presentation/views/widgets/Book_Rating.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/Custom_Book_Details_App_Bar.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/feature_list_view_item.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/similar_books_listView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .25,
                vertical: 20,
              ),
              child: const FeaturedListViewItems(),
            ),
            SizedBox(height: 43),
            const Text('The Jungle Book', style: Styles.title30),
            SizedBox(height: 6),
            Opacity(
              opacity: .7,
              child: Text('Rudyard Kipling', style: Styles.title18),
            ),
            const SizedBox(height: 18),
            BookRating(mainAxisAlignment: MainAxisAlignment.center),
            SizedBox(height: 5),
            BookAction(),
            Expanded(child: const SizedBox(height: 25)),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'You can also like',
                  style: Styles.title18.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SimilarBooksListView(),
          ],
        ),
      ],
    );
  }
}
