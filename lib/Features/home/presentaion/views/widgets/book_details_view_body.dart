import 'package:booklyapp/Features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/custom_book_deatails_app_bar.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BooksDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 48,
                    ),
                  ),
                  SimilarBookSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
