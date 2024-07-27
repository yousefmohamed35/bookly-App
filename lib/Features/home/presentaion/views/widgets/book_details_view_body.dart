import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/custom_book_deatails_app_bar.dart';
import 'package:booklyapp/Features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                const  CustomBookDetailsAppBar(),
                  BooksDetailsSection(book: book,),
                const  Expanded(
                    child: SizedBox(
                      height: 48,
                    ),
                  ),
                 const SimilarBookSection(),
                const  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
