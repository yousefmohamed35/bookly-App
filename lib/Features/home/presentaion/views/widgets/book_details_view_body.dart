import 'package:booklyapp/Features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/custom_book_deatails_app_bar.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  const BooksDetailsSection(),
                  const Expanded(
                    child: SizedBox(
                      height: 48,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SimilarBooksListView(),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
